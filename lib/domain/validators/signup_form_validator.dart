import 'package:get/get.dart';
import 'package:lucid_validation/lucid_validation.dart';
import 'package:nextmind_mobile/domain/dtos/signup_form/signup_form.dart';

class SignupFormValidator extends LucidValidator<SignUpForm> {
  SignupFormValidator() {
    ruleFor((signUpFormAnswers) => signUpFormAnswers.name, key: 'name') //
        .notEmpty(message: 'fieldNotEmpty'.tr)
        .minLength(3, message: 'fieldMinLength'.trParams({'length': '3'}));

    ruleFor((signUpFormAnswers) => signUpFormAnswers.email, key: 'email') //
        .notEmpty(message: 'fieldEmailNotEmpty'.tr)
        .validEmail(message: 'fieldEmailInvalid'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.ra, key: 'ra') //
        .notEmpty(message: 'fieldNotEmpty'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.birthday,
            key: 'birthday') //
        .lessThan(DateTime(DateTime.now().year - 13, 12, 31),
            message: 'fieldBirthdayLessThan'.tr);

    ruleFor((signUpFormAnswers) => signUpFormAnswers.password,
            key: 'password') //
        .notEmpty(message: 'fieldPasswordNotEmpty'.tr)
        .minLength(8, message: 'fieldPasswordMinLength'.tr);
  }
}
