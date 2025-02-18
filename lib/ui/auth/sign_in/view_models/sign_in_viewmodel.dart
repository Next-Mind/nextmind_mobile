import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/domain/dtos/credentials/credentials.dart';
import 'package:nextmind_mobile/domain/validators/credentials_validator.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class AuthViewModel extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  var passwordVisible = false.obs;
  var stayConnected = false.obs;

  Credentials credentials = Credentials('', '');
  final validator = CredentialsValidator();

  static AuthViewModel get to => Get.find<AuthViewModel>();

  late final loginWithEmailCommand = Command0(_loginWithEmail);

  void togglePasswordVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }

  ValueChanged<bool?> toggleStayConnected(bool? value) {
    stayConnected.value = value!;
    return (newValue) => stayConnected.value = newValue!;
  }

  AsyncResult<User> _loginWithEmail() async {
    Future.delayed(Duration(seconds: 2));
    return AuthRepository.to.loginWithEmail(credentials);
  }
}
