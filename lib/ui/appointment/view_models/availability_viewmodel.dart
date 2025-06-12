import 'dart:ffi';

import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/appointment/appointment_repository_remote.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/data/services/appointments/appointment_client_http.dart';
import 'package:result_dart/result_dart.dart';
import 'package:nextmind_mobile/domain/models/appointment/availability.dart';
import 'package:nextmind_mobile/domain/models/appointment/appointment.dart';
import 'package:nextmind_mobile/data/repositories/appointment/appointment_repository.dart';

class AppointmentViewModel extends GetxController {
  DateTime today = DateTime.now();
  final Rx<DateTime> selectedDay = DateTime.now().obs;

  final isLoading = false.obs;
  final error = ''.obs;
  final RxList<Appointment> appointment = <Appointment>[].obs;
  final RxBool isAdding = false.obs;
  final RxMap<String, List<Availability>> groupedAvailabilities =
      <String, List<Availability>>{}.obs;
  final RxMap<DateTime, List<Availability>> Availabilities =
      <DateTime, List<Availability>>{}.obs;
  RxnInt selectedAvailabilityId = RxnInt();
  @override
  void onInit() {
    super.onInit();

    fetchAvailability();
  }

  late AppointmentRepositoryRemote _appointmentRepositoryRemote;

  DateTime endDate() {
    DateTime endDate = today.add(const Duration(days: 365));
    return endDate;
  }

  DateTime date() {
    DateTime endDate = today.add(const Duration(hours: 1));
    return endDate;
  }

  Future<void> fetchAvailability() async {
    var token = '';
    await AuthRepository.to.getUser().onSuccess((user) {
      token = user.token;
    });
    _appointmentRepositoryRemote =
        AppointmentRepositoryRemote(AppointmentClientHttp(
      'https://homolog.nextmind.tech',
    ));
    try {
      isLoading.value = true;
      error.value = '';
      final result = await _appointmentRepositoryRemote.fetchAvailability(
          date(), endDate());

      final Map<String, List<Availability>> grouped = {};

      for (var availability in result) {
        grouped.putIfAbsent(availability.date, () => []).add(availability);
      }

      groupedAvailabilities.assignAll(grouped);
      final Map<DateTime, List<Availability>> convertido = {};
      groupedAvailabilities.forEach((dataTexto, lista) {
        final data = DateTime.parse(dataTexto);
        final dataLimpa = DateTime(data.year, data.month, data.day);

        final eventosValidos = lista.where((a) => a.status == 1).toList();

        if (eventosValidos.isNotEmpty) {
          if (convertido.containsKey(dataLimpa)) {
            convertido[dataLimpa]!.addAll(eventosValidos);
          } else {
            convertido[dataLimpa] = eventosValidos;
          }
        }
      });

      Availabilities.assignAll(convertido);

      print('Grouped availabilities:');
      groupedAvailabilities.forEach((key, list) {
        print('Data: $key');
        for (var availability in list) {
          print(
              '  Availability ID: ${availability.id}, Date: ${availability.date}');
        }
      });
    } catch (e) {
      error.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  Future<bool> preReserveSelected() async {
    final id = selectedAvailabilityId.value;
    if (id == null) {
      print('Nenhuma disponibilidade selecionada!');
      return false;
    }

    return await preReserve(id);
  }

  Future<bool> preReserve(int availabilityId) async {
    final id = selectedAvailabilityId.value;
    isLoading.value = true;
    error.value = '';
    bool success = false;
    try {
      final result =
          await _appointmentRepositoryRemote.preReserve(availabilityId);
      groupedAvailabilities.forEach((key, list) {
        list.removeWhere((availability) => availability.id == availabilityId);
      });

      groupedAvailabilities.removeWhere((key, list) => list.isEmpty);
      Availabilities.forEach((key, list) {
        list.removeWhere((availability) => availability.id == availabilityId);
      });

      Availabilities.removeWhere((key, list) => list.isEmpty);
      await fetchAvailability();
      success = true;
    } catch (e) {
    } finally {
      isLoading.value = false;

      isLoading.value = false;
      return success;
    }
  }

  Future<bool> registerAppointment(
      int availabilityId, String description) async {
    isLoading.value = true;
    error.value = '';
    bool success = false;
    try {
      final Result = await _appointmentRepositoryRemote.registerAppointment(
          availabilityId, description);
    } catch (e) {
    } finally {
      isLoading.value = false;

      isLoading.value = false;
      return success;
    }
  }
}
