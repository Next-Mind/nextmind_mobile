import 'package:get/get.dart';
import 'package:lucid_validation/lucid_validation.dart';
import 'package:nextmind_mobile/domain/dtos/credentials/credentials.dart';

class CredentialsValidator extends LucidValidator<Credentials> {
  CredentialsValidator() {
    ruleFor((credentials) => credentials.email, key: 'email') //
        .notEmpty(message: 'fieldEmailNotEmpty'.tr)
        .validEmail(message: 'fieldEmailInvalid'.tr);

    ruleFor((credentials) => credentials.password, key: 'password') //
        .notEmpty(message: 'fieldPasswordNotEmpty'.tr)
        .minLength(8, message: 'fieldPasswordMinLength'.tr);
  }
}
