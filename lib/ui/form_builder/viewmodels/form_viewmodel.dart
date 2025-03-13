import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile/data/services/form_builder/form_service.dart';
import 'package:nextmind_mobile/domain/models/form_builder/form.dart';
import 'package:nextmind_mobile/domain/models/form_builder/question.dart';

class FormViewModel extends GetxController {
  final FormService _formService = Get.find<FormService>();

  Rx<FormModel?> formData = Rx<FormModel?>(null);
  RxInt currentQuestionIndex = 0.obs;
  RxMap<String, dynamic> answers = RxMap<String, dynamic>({});
  RxBool isLoading = true.obs;
  RxBool hasError = false.obs;
  RxString errorMessage = ''.obs;
  Function(Map<String, dynamic> answers) onSubmit = (answers) {};

  final Logger _logger = Logger();

  final formKey = GlobalKey<FormState>();
  late PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  Future<void> loadForm(String formPath) async {
    isLoading.value = true;
    hasError.value = false;

    try {
      formData.value = await _formService.loadFormData(formPath);
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      hasError.value = true;
      errorMessage.value = e.toString();
      _logger.e('Error loading form: $e');
    }
  }

  Question get currentQuestion =>
      formData.value!.questions[currentQuestionIndex.value];

  bool get isFirstQuestion => currentQuestionIndex.value == 0;

  bool get isLastQuestion =>
      currentQuestionIndex.value == formData.value!.questions.length - 1;

  void goToNextQuestion() {
    if (validateCurrentQuestion()) {
      if (!isLastQuestion) {
        pageController.nextPage(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      } else {
        onSubmit(answers);
      }
    }
  }

  void goToPreviousQuestion() {
    if (!isFirstQuestion) {
      pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  bool validateCurrentQuestion() {
    if (formKey.currentState?.validate() ?? false) {
      return true;
    }
    return false;
  }

  void updateAnswer(String questionId, dynamic value) {
    answers[questionId] = value;
  }

  String? validateAnswer(Question question, dynamic value) {
    if (question.isRequired && (value == null || value.toString().isEmpty)) {
      return question.errorMessage?.tr ?? 'fieldNotEmpty'.tr;
    }

    if (question.validationRegex != null &&
        value != null &&
        value.toString().isNotEmpty) {
      RegExp regExp = RegExp(question.validationRegex!);
      if (!regExp.hasMatch(value.toString())) {
        return question.errorMessage?.tr ?? 'Invalid input';
      }
    }

    return null;
  }

  void resetForm() {
    currentQuestionIndex.value = 0;
    pageController.animateToPage(
      0,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    answers.clear();
    formKey.currentState?.reset();
  }
}
