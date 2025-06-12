import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile/data/services/client_http.dart';
import 'package:nextmind_mobile/domain/models/appointment/appointment.dart';
import 'package:nextmind_mobile/domain/models/appointment/availability.dart';
import 'package:result_dart/result_dart.dart';
import 'package:intl/intl.dart';
import 'package:async/async.dart';

class AppointmentClientHttp {
  final String baseUrl;
//peco ajuda nesta paret andre
  final String? token =
      "eyJhbGciOiJSUzI1NiIsImtpZCI6ImE0YTEwZGVjZTk4MzY2ZDZmNjNlMTY3Mjg2YWU5YjYxMWQyYmFhMjciLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiTWF0aGV1cyBPcml2YWxkbyBTdWFyZXoiLCJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vbmV4dG1pbmQtdjIiLCJhdWQiOiJuZXh0bWluZC12MiIsImF1dGhfdGltZSI6MTc0OTcwNjIzMywidXNlcl9pZCI6IlM3NjdybGdxRjdReU9JZ2dhTGFzaU5JSEdnRzIiLCJzdWIiOiJTNzY3cmxncUY3UXlPSWdnYUxhc2lOSUhHZ0cyIiwiaWF0IjoxNzQ5NzA2MjMzLCJleHAiOjE3NDk3MDk4MzMsImVtYWlsIjoibmV4dG1pbmQuZ29vZ2xlQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJlbWFpbCI6WyJuZXh0bWluZC5nb29nbGVAZ21haWwuY29tIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.g1FW6h8kRH5GUj8AwXlbq7dzf9kY25reMD8BRAB_yF1uif072psv8x58f_zJdLTb9Y3SfG262tOVr1Z13ddsow8_mzikn8JYGXPXUbwLGdB7ZhgQQCYVhiyRemnHWaU2sgudPg8TLZaUbMA2MWutYR-Ggm4mpkRv2xyXXdBAd0RpZf3A3YtepocBSu5MXEfagTodTdFLfW_PZI8q4SVZkiKfxNdYKLPn_voYEzeqdMpj-fiKQFpsuSXJYrxPh_hbuj7VZqzbmrhrmIvIdEeBBZJVAw4gZItboimroMf-uprP0_qKgPFdzvs0B5IMpwxfe6TTeqcFUMX4I30UFWCGOg";
  final Dio _dio;
//peco ajuda nesta paret andre
  AppointmentClientHttp(
    this.baseUrl,
  ) : _dio = Dio(BaseOptions(
          baseUrl: baseUrl,
        ));

  String formatDate(DateTime date) {
    final parsedDate = DateFormat('yyyy-MM-dd').format(date);
    return parsedDate;
  }

  String formatTime(DateTime date) {
    final parsedDate = DateFormat('HH:MM').format(date);
    return parsedDate;
  }

  Future<List<Availability>> getAvailability(
      DateTime startDate, DateTime endDate) async {
    final psychoId = 29;
    final startDateStr = formatDate(startDate);
    final startHourStr = formatTime(startDate);
    final endDateStr = formatDate(endDate);

    final url = Uri.https(
      'homolog.nextmind.tech',
      '/v1/availabilities',
      {
        'psychologist_id': psychoId.toString(),
        'start_date': '$startDate',
        'end_date': '$endDate',
      },
    );

    final response = await http.get(url, headers: {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    });

    print('STATUS 34: ${response.statusCode}');
    print('BODY 34: ${response.body}  $url');
    print('TOKEN usado: $token');

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print('Response json data: $jsonData');
      final users = (jsonData['data']?['available_slots'] ?? []) as List;
      print('Available slots: $users');
      return users.map((u) => Availability.fromJson(u)).toList();
    } else {
      throw Exception('Erro ao procurar datas: ${response.body}');
    }
  }

  Future<void> putReserve(int availabilityId) async {
    final response = await _dio.put(
      '/v1/availabilities/reserve',
      data: {
        "availability_id": availabilityId,
      },
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        validateStatus: (status) => status != null && status < 500,
      ),
    );

    if (response.statusCode != 200) {
      print("Erro ao reservar: ${response.statusCode} - ${response.data}");
      throw Exception("Erro ao reservar horário");
    }
  }

  Future<void> postAppointment(int id, String description) async {
    final response = await _dio.post(
      '/v1/appointments',
      data: {
        "availability_id": id,
        "description": description,
      },
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        validateStatus: (status) => status != null && status < 500,
      ),
    );

    if (response.statusCode != 201) {
      final errorMsg = response.data['message'] ?? 'Erro desconhecido';
      throw Exception('Erro ao criar agendamento: $errorMsg');
    }

    final data = response.data['data'];
    if (data == null) {
      throw Exception('Resposta inválida: Dados ausentes');
    }
  }

//andre peco ajuda para voce nesta párte
  Future<List<Appointment>> getAppointment() async {
    final url = Uri.https(
        'https://homolog.nextmind.tech/v1/appointments/user?results=2&page=11');

    final response = await http.get(url, headers: {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    });

    print('STATUS appoinment: ${response.statusCode}');
    print('BODY appoiment: ${response.body}  $url');

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print('Response json data: $jsonData');
      final users = (jsonData['data']?['appoinments'] ?? []) as List;
      print('Available slots: $users');
      return users.map((u) => Appointment.fromJson(u)).toList();
    } else {
      throw Exception('Erro ao procurar datas: ${response.body}');
    }
  }
}
