import 'dart:async';

import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/data/services/auth/auth_client_http.dart';
import 'package:nextmind_mobile/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile/data/services/auth/auth_service.dart';
import 'package:nextmind_mobile/domain/dtos/credentials/credentials.dart';
import 'package:nextmind_mobile/domain/dtos/signup_form/signup_form.dart';
import 'package:nextmind_mobile/domain/models/login_result/login_result.dart';
import 'package:nextmind_mobile/domain/validators/credentials_validator.dart';
import 'package:nextmind_mobile/domain/validators/signup_form_validator.dart';
import 'package:nextmind_mobile/utils/validation/lucid_validator_extension.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:result_dart/result_dart.dart';

class AuthRepositoryRemote extends GetxController implements AuthRepository {
  //Dependencias
  final AuthService _authService = AuthService.to;
  final AuthLocalStorage _authLocalStorage = Get.find();
  final AuthClientHttp _authClientHttp = Get.find();

  //Stream do usuário logado
  final _streamController = StreamController<User>.broadcast();

  static AuthRepository get to => Get.find<AuthRepository>();

  @override
  void onInit() {
    super.onInit();
    getUser().fold(
      _streamController.add,
      (_) => _streamController.add(
        NotLoggedUser(),
      ),
    );
    ever(
      _authService.userIsAuthenticated,
      (isAuthenticated) => !isAuthenticated
          ? _streamController.add(const NotLoggedUser())
          : null,
    );
  }

  @override
  AsyncResult<LoggedUser> loginWithEmail(Credentials credentials) {
    final validator = CredentialsValidator();

    return validator //
        .validateResult(credentials)
        .flatMap(_authService.loginUserWithEmail)
        .flatMap(_authClientHttp.authApiUser)
        .flatMap(
          (user) => _authClientHttp.getApiUser(user.token!),
        ) //precisa melhorar isso
        .flatMap(_authLocalStorage.saveUser)
        .onSuccess(_streamController.add);
  }

  @override
  AsyncResult<LoginResult> loginWithGoogle() {
    return _authService //
        .loginGoogleUser()
        .flatMap(_authClientHttp.authApiUser)
        .flatMap((user) async {
      if (!user.questionnaireAnswered || !user.completeProfile) {
        return Success(NeedsFormSubscription(user));
      }
      LoggedUser loggedUser =
          await _authClientHttp.getApiUser(user.token!).getOrThrow();
      _authLocalStorage.saveUser(loggedUser).onSuccess(_streamController.add);
      return Success(UserLogged(loggedUser));
    });
  }

  @override
  AsyncResult<LoginResult> completeRegistration(ApiUser completeApiUser) {
    return _authClientHttp
        .setQuestionnaireAnswers(completeApiUser)
        .flatMap(_authClientHttp.setProfileInfo)
        .flatMap((user) => _authClientHttp.getApiUser(user.token!))
        .flatMap(_authLocalStorage.saveUser)
        .onSuccess(_streamController.add)
        .map((loggedUser) => UserLogged(loggedUser));
  }

  @override
  AsyncResult<LoggedUser> registerWithEmail(SignUpForm signUpFormAnswers) {
    final validator = SignupFormValidator();

    return validator //
        .validateResult(signUpFormAnswers)
        .flatMap(_authService.newUserWithEmail)
        .flatMap(_authClientHttp.authApiUser)
        .flatMap((apiUser) {
          apiUser = apiUser.copyWith(
            birthday: signUpFormAnswers.birthday,
            ra: signUpFormAnswers.ra,
            questionnaire: signUpFormAnswers.questionnaireAnswers,
          );
          return _authClientHttp.setQuestionnaireAnswers(apiUser);
        })
        .flatMap(_authClientHttp.setProfileInfo)
        .flatMap((user) => _authClientHttp.getApiUser(user.token!))
        .flatMap(_authLocalStorage.saveUser)
        .onSuccess(_streamController.add);
  }

  @override
  AsyncResult<Unit> logout() {
    return _authLocalStorage
        .removeUser() //
        .flatMap((_) => _authService.logout())
        .onSuccess(
          (_) => _streamController.add(const NotLoggedUser()),
        );
  }

  @override
  AsyncResult<LoggedUser> getUser() {
    return _authLocalStorage.getUser();
  }

  @override
  Stream<User> userObserver() {
    return _streamController.stream;
  }

  @override
  void onClose() {
    super.onClose();
    _streamController.close();
  }
}
