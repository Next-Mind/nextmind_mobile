// ignore_for_file: avoid_print, unused_field, dead_code, unused_local_variable

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:nextmind_mobile/data/models/user_model.dart';

class ContactService {
  final String baseUrl;
  final String? token;
  final Dio _dio;

  ContactService(this.baseUrl, {this.token})
  : _dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    headers: {'Authorization': 'Bearer $token'},
  ));

  Future<List<UserModel>> getContactList({int page = 1, int results = 50}) async {
    final url = Uri.parse('$baseUrl/v1/contacts?page=$page&results=$results&order_by=last_add');
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      }
    );
    print('STATUS: ${response.statusCode}'); // APENAS PARA DEBUG
    print('BODY: ${response.body}'); // APENAS PARA DEBUG


    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final users = (jsonData['data']?['users'] ?? []) as List;
      return users.map((u) => UserModel.fromJson(u)).toList();
    } else {
      throw Exception('Erro ao buscar contatos');
    }
  }

  Future<List<UserModel>> getUsersToAdd() async {
    final url = Uri.parse('$baseUrl/v1/contacts/users?page=1&results=99');
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      }
    );

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final users = (jsonData['data']?['users'] ?? []) as List;
      return users.map((u) => UserModel.fromJson(u)).toList();
    } else {
      throw Exception("DEU PAU: ${response.body}");
    }
  }

  Future<List<UserModel>> fetchUsersToAdd() async {
    final response = await _dio.get('/v1/contacts/users', queryParameters: {
      'page': 1,
      'results': 5,
    });

    if (response.statusCode == 200) {
      final List data = response.data['data']['users'];
      return data.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception('Erro ao buscar usuários para adicionar');
    }
  }

  Future<UserModel> addContact(int id) async {
    final response = await _dio.post('/v1/contacts', data: {"contact_id": id}, options: Options(validateStatus: (status) => status != null && status < 500,),);

    if (response.statusCode != 201) {
      final errorMsg = response.data['message'] ?? 'Erro desconhecido';
      throw Exception('Erro ao adicionar contato: $errorMsg');
    }

    final data = response.data['data'];
    if (data == null){
      throw Exception('Resposta invlida: Dados ausentes');
    }

    return UserModel(
      id: data['contact_id'], 
      uid: data['user_id'].toString(), 
      name: '',
      nickname: data['nickname'] ?? 'Novo Contato', 
      email: '', 
      phone: '', 
      profileImage: '', 
      isFriend: true,
    );
  }

  Future<void> deleteContact(int id) async {
    final response = await _dio.delete(
      '/v1/contacts',
      data: {"contact_id": id},
    );

    if(response.statusCode != 200){
      throw Exception('Erro ao excluir o contato');
    }
  }

  Future<void> updateContact(int id, String newName) async {
    final response = await _dio.put(
    '/v1/contacts',
    data: {
      "contact_id": id,
      "nickname": newName,
    },
    options: Options(
      validateStatus: (status) => status != null && status < 500,
    ),
  );

  if (response.statusCode != 200) {
    final errorMsg = response.data['message'] ?? 'Erro desconhecido';
    throw Exception('Erro ao atualizar contato: $errorMsg');
  }
  }
}