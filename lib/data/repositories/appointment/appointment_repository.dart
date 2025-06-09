import 'package:nextmind_mobile/domain/models/appointment/availability.dart';
import 'package:nextmind_mobile/domain/models/appointment/appointment.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class AppointmentRepository {
  AsyncResult<List<Availability>> fetchAvailability(
      int psychoId, DateTime startDate, DateTime endDate);

  AsyncResult<Unit> preReserve(int availabilityId);

  AsyncResult<Unit> scheduleAppointment(int availabilityId, String description);

  AsyncResult<Appointment> fetchNextAppointment();
}
