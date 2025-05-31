import 'package:nextmind_mobile/data/repositories/appointment/appointment_repository.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/models/appointment/availability.dart';
import 'package:result_dart/result_dart.dart';

class AppointmentRepositoryRemote extends GetxController implements AppointmentRepository {
  
  @override
  AsyncResult<List<Availability>> fetchAvailability(int psychoId, DateTime startDate, DateTime endDate) {
    // TODO: implement fetchAvailability
    throw UnimplementedError();
  }

  @override
  AsyncResult<Unit> preReserve(int availabilityId) {
    // TODO: implement preReserve
    throw UnimplementedError();
  }

  @override
  AsyncResult<Unit> scheduleAppointment(int availabilityId, String description) {
    // TODO: implement scheduleAppointment
    throw UnimplementedError();
  }






}