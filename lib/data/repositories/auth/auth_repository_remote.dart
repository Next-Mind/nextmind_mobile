import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/data/services/api/auth/auth_service.dart';
import 'package:nextmind_mobile/domain/dtos/credentials/credentials.dart';
import 'package:nextmind_mobile/domain/validators/credentials_validator.dart';
import 'package:nextmind_mobile/utils/validation/lucid_validator_extension.dart';
import 'package:result_dart/result_dart.dart';

class AuthRepositoryRemote extends GetxController implements AuthRepository {
  final AuthService _authService = AuthService.to;

  @override
  late RxBool userIsAuthenticated;

  static AuthRepository get to => Get.find<AuthRepository>();

  @override
  void onInit() {
    super.onInit();
    userIsAuthenticated = _authService.userIsAuthenticated;
  }

  @override
  AsyncResult<User> loginWithEmail(Credentials credentials) {
    final validator = CredentialsValidator();

    return validator //
        .validateResult(credentials)
        .flatMap(_authService.loginUserWithEmail);
  }

  @override
  AsyncResult<User> loginWithGoogle() {
    return _authService //
        .loginGoogleUser();
  }

  @override
  AsyncResult<Unit> logout() {
    return _authService //
        .logout();
  }

  @override
  AsyncResult<User> registerWithEmail(Credentials credentials) {
    final validator = CredentialsValidator();

    return validator //
        .validateResult(credentials)
        .flatMap(_authService.newUserWithEmail);
  }
}
