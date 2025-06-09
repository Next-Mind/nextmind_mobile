import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/appointment/appointment_repository.dart';
import 'package:nextmind_mobile/domain/models/appointment/appointment.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class NextAppointmentViewmodel extends GetxController {
  static NextAppointmentViewmodel get to =>
      Get.find<NextAppointmentViewmodel>();

  final AppointmentRepository _appointmentRepository =
      Get.find<AppointmentRepository>();

  late final fetchNextAppointmentCommand = Command0(
    _fetchNextAppointment,
  );

  String nextAppointmentTitle = '';
  String nextAppointmentDate = '';
  String nextAppointmentHint = '';
  String nextAppointmentButton = '';
  bool hasNextAppointment = false;

  final DateTime _now = DateTime.now();

  @override
  void onInit() async {
    super.onInit();
    fetchNextAppointmentCommand.execute();
  }

  AsyncResult<Unit> _fetchNextAppointment() async {
    final result = await _appointmentRepository.fetchNextAppointment();
    return result.fold(
      (appointment) {
        if (appointment is EmptyAppointment) {
          // Handle the case where there is no next appointment
          nextAppointmentTitle = 'Não há consultas agendadas';
          nextAppointmentDate = '';
          nextAppointmentHint = 'Agende uma consulta';
          nextAppointmentButton = 'Agendar';
          return Success(unit);
        } else if (appointment is NextAppointment) {
          nextAppointmentTitle = 'Próxima consulta em';
          Duration difference = appointment.date.difference(_now);
          if (difference.inDays > 0) {
            nextAppointmentDate = '${difference.inDays} dias';
          } else {
            nextAppointmentDate = 'Hoje';
          }
          nextAppointmentHint = 'Confirme sua presença ou cancele a consulta';
          nextAppointmentButton = 'Confirmar Presença';
          hasNextAppointment = true;
          return Success(unit);
        }
        return Failure(Exception('Unknown appointment type'));
      },
      (error) {
        return Failure(error);
      },
    );
  }

  AsyncResult<Unit> handleNextAppointmentButton() async {
    if (hasNextAppointment) {
      // Navigate to appointment details or confirmation page
      // For example:
      // Get.toNamed('/appointment-details', arguments: nextAppointment);
      return Success(unit);
    } else {
      // Navigate to appointment scheduling page
      // For example:
      // Get.toNamed('/schedule-appointment');
      return Success(unit);
    }
  }
}
