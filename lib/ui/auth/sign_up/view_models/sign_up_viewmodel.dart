import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/dtos/signUpForm/sign_up_form.dart';

class SignUpViewModel extends GetxController {
  static SignUpViewModel get to => Get.find<SignUpViewModel>();

  final PageController pageController = PageController();
  final SignUpForm signUpFormAnswers = SignUpForm();
  var currentPage = 0.obs;

  late int length;

  void onPageChanged(int page) {
    currentPage.value = page;
    update();
  }

  void setPagesLegth(int length) {
    this.length = length;
  }

  void goToNextPage() {
    if (currentPage < length) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInSine,
      );
    }
  }

  void goToPreviousPage() {
    if (currentPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInSine,
      );
    } else {
      Get.back();
    }
  }
}
