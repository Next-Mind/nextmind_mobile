import 'package:nextmind_mobile/domain/models/login_result/login_result.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/domain/dtos/credentials/credentials.dart';
import 'package:nextmind_mobile/domain/validators/credentials_validator.dart';
import 'package:nextmind_mobile/utils/routes/app_routes.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class SignInViewModel extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  var passwordVisible = false.obs;
  var stayConnected = false.obs;

  Credentials credentials = Credentials('', '');
  final validator = CredentialsValidator();

  static SignInViewModel get to => Get.find<SignInViewModel>();

  late final loginWithEmailCommand = Command0(_loginWithEmail);

  late final loginWithGoogleCommand = Command0(_loginWithGoogle);

  late final loginWithAppleCommand = Command0(_loginWithApple);

  late final loginWithFacebookCommand = Command0(_loginWithFacebook);

  void togglePasswordVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }

  ValueChanged<bool?> toggleStayConnected(bool? value) {
    stayConnected.value = value!;
    return (newValue) => stayConnected.value = newValue!;
  }

  AsyncResult<User> _loginWithEmail() async {
    return AuthRepository.to.loginWithEmail(credentials);
  }

  AsyncResult<User> _loginWithGoogle() async {
    var loginResult = await AuthRepository.to.loginWithGoogle().getOrThrow();
    if (loginResult is NeedsFormSubscription) {
      await _goToSignupForm(loginResult.getUser());
    }
    return Success(loginResult.getUser());
  }

  Future<void> _goToSignupForm(ApiUser newUser) async {
    Get.offAndToNamed(AppRoutes.authSignupFormGoogle,
        arguments: (questionnaireAnswers) {
      newUser = newUser.copyWith(
        name: questionnaireAnswers.remove('name'),
        birthday: questionnaireAnswers.remove('birthday'),
        ra: questionnaireAnswers.remove('ra'),
        questionnaire: questionnaireAnswers,
      );
      AuthRepository.to.completeRegistration(newUser);
      Get.toNamed(AppRoutes.loadingScreen);
    });
  }

  AsyncResult<Unit> _loginWithFacebook() async {
    //Get.snackbar('Ops!', 'unimplementedError'.tr);
    return Failure(Exception());
  }

  AsyncResult<Unit> _loginWithApple() async {
    Get.snackbar('Ops!', 'unimplementedError'.tr);
    return Success(unit);
  }
}
