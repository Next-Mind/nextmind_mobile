import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/appointment/appointment_repository.dart';
import 'package:nextmind_mobile/domain/models/appointment/appointment.dart';
import 'package:nextmind_mobile/domain/models/appointment/availability.dart';
import 'package:result_dart/result_dart.dart';

class AppointmentRepositoryLocal extends GetxController
    implements AppointmentRepository {
  @override
  AsyncResult<List<Availability>> fetchAvailability(
      int psychoId, DateTime startDate, DateTime endDate) {
    // TODO: implement fetchAvailability
    throw UnimplementedError();
  }

  @override
  AsyncResult<Appointment> fetchNextAppointment() async {
    final json = {
      "id": 1,
      "date": "2025-06-10T10:00:00Z",
    };
    final nextAppointment = NextAppointment.fromJson(json);
    //final nextAppointment = EmptyAppointment();
    return Success(nextAppointment);
  }

  @override
  AsyncResult<Unit> preReserve(int availabilityId) {
    // TODO: implement preReserve
    throw UnimplementedError();
  }

  @override
  AsyncResult<Unit> scheduleAppointment(
      int availabilityId, String description) {
    // TODO: implement scheduleAppointment
    throw UnimplementedError();
  }
}
