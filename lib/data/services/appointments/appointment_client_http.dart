import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile/data/services/client_http.dart';
import 'package:nextmind_mobile/domain/models/appointment/availability.dart';
import 'package:result_dart/result_dart.dart';

class AppointmentClientHttp extends GetxService {
  final ClientHttp _clientHttp = Get.find<ClientHttp>();
  final Logger _logger = Logger();

  AsyncResult<String> _getUserToken() async {
    _logger.d('Fetching user token from local storage');
    final storage = Get.find<AuthLocalStorage>();
    final user = await storage.getUser().getOrThrow();
    return Success(user.token);
  }

  AsyncResult<List<Availability>> fetchAvailability(
      int psychoId, DateTime startDate, DateTime endDate) async {
    _logger.d(
        'Fetching availability for psychologist ID: $psychoId from $startDate to $endDate');

    final response = _clientHttp.get(
      'https://api.nextmind.tech/v1/availabilities?psychologist_id=$psychoId&start_date=$startDate&end_date=$endDate',
      requiresAuth: true,
      token: await _getUserToken().getOrNull(),
    );

    return response.map((r) {
      _logger.d('Raw availability data: ${r.data['data']['available_slots']}');
      final availabilitiesRaw = r.data['data']['available_slots'] as List;
      return availabilitiesRaw.map((e) => Availability.fromJson(e)).toList();
    });
  }
}
