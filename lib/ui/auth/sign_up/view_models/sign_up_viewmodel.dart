import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/domain/dtos/signup_form/signup_form.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:nextmind_mobile/domain/validators/signup_form_validator.dart';
import 'package:nextmind_mobile/utils/routes/app_routes.dart';
import 'package:intl/intl.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class SignUpViewModel extends GetxController {
  static SignUpViewModel get to => Get.find<SignUpViewModel>();

  final formKey = GlobalKey<FormState>();
  var passwordVisible = false.obs;

  late final registerWithEmailCommand = Command1<User, Map<String, dynamic>>(
      (answers) => _registerWithEmail(answers));

  TextEditingController nameController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController raController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var signUpFormAnswers = SignUpForm.init().obs;
  var validator = SignupFormValidator().obs;

  var isFormValid = false.obs;

  @override
  void onInit() {
    super.onInit();
    ever(signUpFormAnswers, (_) {
      isFormValid.value =
          validator.value.validate(signUpFormAnswers.value).isValid;
    });
  }

  void togglePasswordVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }

  void submitForm() {
    Get.toNamed(AppRoutes.authSignupForm, arguments: (questionnaireAnswers) {
      registerWithEmailCommand.execute(questionnaireAnswers);
    });
  }

  void setName(String name) {
    signUpFormAnswers.value.setName(name);
    signUpFormAnswers.refresh(); // importante para notificar a mudança
  }

  void setBirthday(String birthday) {
    try {
      final parsedDate = DateFormat('dd/MM/yyyy').parseStrict(birthday);
      signUpFormAnswers.value.setBirthday(parsedDate);
    } catch (e) {
      signUpFormAnswers.value.setBirthday(DateTime.now());
    }
    signUpFormAnswers.refresh();
  }

  void setEmail(String email) {
    signUpFormAnswers.value.setEmail(email);
    signUpFormAnswers.refresh(); // importante para notificar a mudança
  }

  void setRa(String ra) {
    signUpFormAnswers.value.setRa(ra);
    signUpFormAnswers.refresh(); // importante para notificar a mudança
  }

  void setPassword(String password) {
    signUpFormAnswers.value.setPassword(password);
    signUpFormAnswers.refresh(); // importante para notificar a mudança
  }

  AsyncResult<User> _registerWithEmail(
      Map<String, dynamic> questionAnswers) async {
    signUpFormAnswers.value.questionnaireAnswers = questionAnswers;
    return AuthRepository.to
        .registerWithEmail(signUpFormAnswers.value)
        .onFailure(
          (failure) => Get.snackbar('Ops!', failure.toString()),
        );
  }
}
