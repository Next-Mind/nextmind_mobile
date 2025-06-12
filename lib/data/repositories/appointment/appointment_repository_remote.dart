import 'package:nextmind_mobile/data/repositories/appointment/appointment_repository.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/services/appointments/appointment_client_http.dart';
import 'package:nextmind_mobile/domain/models/appointment/appointment.dart';
import 'package:nextmind_mobile/domain/models/appointment/availability.dart';
import 'package:result_dart/result_dart.dart';

class AppointmentRepositoryRemote {
  late AppointmentClientHttp _appointmentClientHttp;
  AppointmentRepositoryRemote(this._appointmentClientHttp);

  Future<List<Availability>> fetchAvailability(
      DateTime startDate, DateTime endDate) {
    return _appointmentClientHttp.getAvailability(startDate, endDate);
  }

  @override
  Future<void> preReserve(int availabilityId) {
    return _appointmentClientHttp.putReserve(availabilityId);
  }

  @override
  Future<void> scheduleAppointment(int availabilityId, String description) {
    return _appointmentClientHttp.getAppointment();
  }

  @override
  Future<void> registerAppointment(int availabilityId, String description) {
    return _appointmentClientHttp.postAppointment(availabilityId, description);
  }

  AsyncResult<Appointment> fetchNextAppointment() {
    // TODO: implement fetchNextAppointment
    throw UnimplementedError();
  }
}
