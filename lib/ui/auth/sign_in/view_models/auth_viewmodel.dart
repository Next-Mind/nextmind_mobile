import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/domain/dtos/credentials/credentials.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class AuthViewModel extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  var passwordVisible = false.obs;

  static AuthViewModel get to => Get.find<AuthViewModel>();

  late final loginWithEmailCommand = Command1(_loginWithEmail);

  AsyncResult<User> _loginWithEmail(Credentials credentials) async {
    return AuthRepository.to.loginWithEmail(credentials);
  }
}
