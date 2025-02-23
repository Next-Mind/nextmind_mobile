import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/dtos/signup_form/signup_form.dart';
import 'package:nextmind_mobile/domain/validators/signup_form_validator.dart';
import 'package:nextmind_mobile/utils/routes/routes.dart';

class SignUpViewModel extends GetxController {
  static SignUpViewModel get to => Get.find<SignUpViewModel>();

  final formKey = GlobalKey<FormState>();
  var passwordVisible = false.obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController raController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController currentGradeController = TextEditingController();
  TextEditingController reasonsForUsingAppController = TextEditingController();
  TextEditingController hasTherapyExperienceController =
      TextEditingController();
  TextEditingController lastPsychologicalExamController =
      TextEditingController();
  TextEditingController academicImpactOnMentalHealthController =
      TextEditingController();
  TextEditingController restAndLeisureLevelController = TextEditingController();
  TextEditingController practicesPhysicalActivityController =
      TextEditingController();
  TextEditingController averageSleepHoursController = TextEditingController();
  TextEditingController eatingHabitsClassificationController =
      TextEditingController();

  final PageController pageController = PageController();

  var signUpFormAnswers = SignUpForm().obs;
  var validator = SignupFormValidator().obs;

  var currentPage = 0.obs;
  var isFormValid = false.obs;

  late int pagesLength;

  final List<String> grades = [
    'school_grade_1'.tr,
    'school_grade_2'.tr,
    'school_grade_3'.tr,
    'school_grade_4'.tr,
    'school_grade_other'.tr,
  ];

  final List<String> reasons = [
    'Motivo 1',
    'Motivo 2',
    'Motivo 3',
  ];

  final List<String> therapyExperience = [
    'Experiencia 1',
    'Experiencia 2',
    'Experiencia 3'
  ];

  final List<GlobalKey<FormState>> formKeys = [];

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

  void setPagesLegth(int pagesLength) {
    this.pagesLength = pagesLength;
    formKeys.clear();
    formKeys.addAll(List.generate(pagesLength, (_) => GlobalKey<FormState>()));
  }

  void onPageChanged(int page) {
    currentPage.value = page;
    update();
  }

  void goToNextPage() {
    final currentFormKey = formKeys[currentPage.value];
    if (currentFormKey.currentState?.validate() ?? false) {
      if (currentPage.value < pagesLength - 1) {
        pageController.nextPage(
            duration: Duration(milliseconds: 300), curve: Curves.ease);
      } else {
        submitForm();
      }
    } else {
      Get.snackbar(
          "Atenção", "Por favor, preencha as informações necessárias.");
    }
  }

  void submitForm() {
    signUpFormAnswers.value.formSubmitted = true;
    Get.toNamed(Routes.authSignupForm);
  }

  void setName(String name) {
    signUpFormAnswers.value.setName(name);
    signUpFormAnswers.refresh(); // importante para notificar a mudança
  }

  void setBirthday(String birthday) {
    signUpFormAnswers.value
        .setBirthday(DateTime.tryParse(birthday) ?? DateTime.now());
    signUpFormAnswers.refresh(); // importante para notificar a mudança
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

  void setCurrentGrade(int index) {
    currentGradeController.text = grades[index];
    signUpFormAnswers.value.setCurrentGrade(grades[index]);
  }

  void setReasonsForUsingApp(int index) {
    reasonsForUsingAppController.text = reasons[index];
    signUpFormAnswers.value.setReasonsForUsingApp(reasons[index]);
    signUpFormAnswers.refresh();
  }

  void setHasTherapyExperience(int index) {
    hasTherapyExperienceController.text = therapyExperience[index];
    signUpFormAnswers.value.setHasTherapyExperience(therapyExperience[index]);
    signUpFormAnswers.refresh();
  }

  void setLastPsychologicalExam(String lastPsychologicalExam) {
    signUpFormAnswers.value.setLastPsychologicalExam(lastPsychologicalExam);
  }

  void setAcademicImpactOnMentalHealth(String academicImpactOnMentalHealth) {
    signUpFormAnswers.value
        .setAcademicImpactOnMentalHealth(academicImpactOnMentalHealth);
  }

  void setRestAndLeisureLevel(String restAndLeisureLevel) {
    signUpFormAnswers.value.setRestAndLeisureLevel(restAndLeisureLevel);
  }

  void setPracticesPhysicalActivity(String practicesPhysicalActivity) {
    signUpFormAnswers.value
        .setPracticesPhysicalActivity(practicesPhysicalActivity);
  }

  void setAverageSleepHours(String averageSleepHours) {
    signUpFormAnswers.value.setAverageSleepHours(averageSleepHours);
  }

  void setEatingHabitsClassification(String eatingHabitsClassification) {
    signUpFormAnswers.value
        .setEatingHabitsClassification(eatingHabitsClassification);
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
