import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/dtos/credentials/credentials.dart';
import 'package:nextmind_mobile/domain/validators/credentials_validator.dart';

class PersonalInfoFormViewModel extends GetxController {
  static PersonalInfoFormViewModel get to =>
      Get.find<PersonalInfoFormViewModel>();

  final formKey = GlobalKey<FormState>();

  var passwordVisible = false.obs;

  void togglePasswordVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController raController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Credentials credentials = Credentials('', '');
  final validator = CredentialsValidator();
}
