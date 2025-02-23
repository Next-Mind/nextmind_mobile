import 'package:get/get.dart';
import 'package:lucid_validation/lucid_validation.dart';
import 'package:nextmind_mobile/domain/dtos/signup_form/signup_form.dart';

class SignupFormValidator extends LucidValidator<SignUpForm> {
  SignupFormValidator() {
    ruleFor((signUpFormAnswers) => signUpFormAnswers.name, key: 'name') //
        .notEmpty(message: 'fieldNameNotEmpty'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.email, key: 'email') //
        .notEmpty(message: 'fieldEmailNotEmpty'.tr)
        .validEmail(message: 'fieldEmailInvalid'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.ra, key: 'ra') //
        .notEmpty(message: 'fieldRaNotEmpty'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.password,
            key: 'password') //
        .notEmpty(message: 'fieldPasswordNotEmpty'.tr)
        .minLength(8, message: 'fieldPasswordMinLength'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.currentGrade,
            key: 'currentGrade') //
        .when((signUpFormAnswers) => signUpFormAnswers.formSubmitted)
        .notEmpty(message: 'fieldCurrentGradeNotEmpty'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.reasonsForUsingApp,
            key: 'reasonsForUsingApp') //
        .when((signUpFormAnswers) => signUpFormAnswers.formSubmitted)
        .notEmpty(message: 'fieldReasonsForUsingAppNotEmpty'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.hasTherapyExperience,
            key: 'hasTherapyExperience') //
        .when((signUpFormAnswers) => signUpFormAnswers.formSubmitted)
        .isNotNull();

    ruleFor((signUpFormAnswers) => signUpFormAnswers.lastPsychologicalExam,
            key: 'lastPsychologicalExam') //
        .when((signUpFormAnswers) => signUpFormAnswers.formSubmitted)
        .notEmpty(message: 'fieldLastPsychologicalExamNotEmpty'.tr);

    ruleFor(
            (signUpFormAnswers) =>
                signUpFormAnswers.academicImpactOnMentalHealth,
            key: 'academicImpactOnMentalHealth') //
        .when((signUpFormAnswers) => signUpFormAnswers.formSubmitted)
        .notEmpty(message: 'fieldAcademicImpactOnMentalHealthNotEmpty'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.restAndLeisureLevel,
            key: 'restAndLeisureLevel') //
        .when((signUpFormAnswers) => signUpFormAnswers.formSubmitted)
        .notEmpty(message: 'fieldRestAndLeisureLevelNotEmpty'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.practicesPhysicalActivity,
            key: 'practicesPhysicalActivity') //
        .when((signUpFormAnswers) => signUpFormAnswers.formSubmitted)
        .notEmpty(message: 'fieldPracticesPhysicalActivityNotEmpty'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.averageSleepHours,
            key: 'averageSleepHours') //
        .when((signUpFormAnswers) => signUpFormAnswers.formSubmitted)
        .notEmpty(message: 'fieldAverageSleepHoursNotEmpty'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.eatingHabitsClassification,
            key: 'eatingHabitsClassification') //
        .when((signUpFormAnswers) => signUpFormAnswers.formSubmitted)
        .notEmpty(message: 'fieldEatingHabitsClassificationNotEmpty'.tr);
  }
}
