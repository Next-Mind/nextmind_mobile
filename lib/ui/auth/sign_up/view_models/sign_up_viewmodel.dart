import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/dtos/signUpForm/sign_up_form.dart';

class SignUpViewModel extends GetxController {
  static SignUpViewModel get to => Get.find<SignUpViewModel>();

  final PageController pageController = PageController();
  final SignUpForm signUpFormAnswers = SignUpForm();
  int currentPage = 0;

  void onPageChanged(int page) {
    currentPage = page;
    update();
  }

  void goToNextPage() {
    if (currentPage < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void goToPreviousPage() {
    if (currentPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOut,
      );
    }
  }
}
