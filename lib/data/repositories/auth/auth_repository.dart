import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/dtos/credentials/credentials.dart';
import 'package:nextmind_mobile/domain/dtos/signup_form/signup_form.dart';
import 'package:nextmind_mobile/domain/models/login_result/login_result.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class AuthRepository extends GetxController {
  static AuthRepository get to => Get.find<AuthRepository>();

  AsyncResult<LoggedUser> getUser();
  Stream<User> userObserver();

  AsyncResult<User> registerWithEmail(SignUpForm signUpFormAnswers);
  AsyncResult<LoggedUser> loginWithEmail(Credentials credentials);
  AsyncResult<LoginResult> completeRegistration(ApiUser completeApiUser);
  AsyncResult<LoginResult> loginWithGoogle();
  AsyncResult<Unit> logout();
}
