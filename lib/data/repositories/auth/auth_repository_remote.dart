import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile/data/services/auth/auth_service.dart';
import 'package:nextmind_mobile/domain/dtos/credentials/credentials.dart';
import 'package:nextmind_mobile/domain/validators/credentials_validator.dart';
import 'package:nextmind_mobile/utils/validation/lucid_validator_extension.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:result_dart/result_dart.dart';

class AuthRepositoryRemote extends GetxController implements AuthRepository {
  final AuthService _authService = AuthService.to;
  final AuthLocalStorage _authLocalStorage = Get.find();

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
        .flatMap(_authService.loginUserWithEmail)
        .flatMap(_authLocalStorage.saveUser);
  }

  @override
  AsyncResult<User> loginWithGoogle() {
    return _authService //
        .loginGoogleUser()
        .flatMap(_authLocalStorage.saveUser);
  }

  @override
  AsyncResult<Unit> logout() {
    _authLocalStorage.removeUser();
    return _authService.logout();
  }

  @override
  AsyncResult<User> registerWithEmail(Credentials credentials) {
    final validator = CredentialsValidator();

    return validator //
        .validateResult(credentials)
        .flatMap(_authService.newUserWithEmail)
        .flatMap(_authLocalStorage.saveUser);
  }

  @override
  AsyncResult<User> getUser() {
    return _authLocalStorage.getUser();
  }
}
