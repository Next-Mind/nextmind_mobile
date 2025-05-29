import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile/data/services/client_http.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:result_dart/result_dart.dart';

class AuthClientHttp extends GetxController {
  final ClientHttp _clientHttp = Get.find<ClientHttp>();
  final Logger _logger = Logger();

  static AuthClientHttp get to => Get.find();

  AsyncResult<ApiUser> authApiUser(String token) async {
    _logger.d('$runtimeType: Calling the API route for authentication');
    final response = await _clientHttp.post(
        'https://api.nextmind.tech/v1/auth', {},
        requiresAuth: true, token: token);

    return response.map((response) {
      _logger
          .d('$runtimeType: Raw user data: ${response.data['data']['user']}');
      final userRaw = response.data['data']['user'];
      return ApiUser.fromJson(userRaw).copyWith(token: token);
    });
  }

  AsyncResult<ApiUser> setQuestionnaireAnswers(ApiUser user) async {
    _logger.d(
        '$runtimeType: Calling the API route to send questionnaire responses');
    final postBody = {'questionnaire': user.questionnaire};
    _logger.d(postBody);
    return await _clientHttp
        .put('https://api.nextmind.tech/v1/users/me/questionnaire', postBody,
            requiresAuth: true, token: user.token)
        .pure(user);
  }

  AsyncResult<ApiUser> setProfileInfo(ApiUser user) async {
    _logger.d(
        '$runtimeType: Calling the API route to send user profile information');
    final postBody = {"user": user.toJson()};
    _logger.d(postBody);
    return await _clientHttp
        .put('https://api.nextmind.tech/v1/users/me/profile', postBody,
            requiresAuth: true, token: user.token)
        .onSuccess((r) => _logger.d(r.data.toString()))
        .pure(user);
  }

  AsyncResult<LoggedUser> getApiUser(String token) async {
    _logger.d(
        '$runtimeType: Calling the API route to retrieve the currently logged in data');
    final response = _clientHttp.get(
      'https://api.nextmind.tech/v1/users/me',
      requiresAuth: true,
      token: token,
    );
    return response.map((r) =>
        LoggedUser.fromJson(r.data['data']['user']).copyWith(token: token));
  }
}
