import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/services/auth/auth_service.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class ForgotPasswordViewModel extends GetxController {
  final AuthService _authService = AuthService.to;
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late final sendEmailCommand = Command0(_sendEmail);

  bool isValidEmail(String email) {
    final RegExp regex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return regex.hasMatch(email);
  }

  AsyncResult<Unit> _sendEmail() {
    return _authService.sendPasswordResetEmail(emailController.text);
  }
}
