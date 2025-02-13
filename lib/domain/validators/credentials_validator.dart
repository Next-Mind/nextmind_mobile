import 'package:lucid_validation/lucid_validation.dart';
import 'package:nextmind_mobile/domain/dtos/credentials/credentials.dart';

class CredentialsValidator extends LucidValidator<Credentials> {
  CredentialsValidator() {
    ruleFor((credentials) => credentials.email, key: 'email') //
        .notEmpty()
        .validEmail();

    ruleFor((credentials) => credentials.password, key: 'password') //
        .notEmpty()
        .minLength(8, message: 'Must be at least 8 characters long')
        .mustHaveLowercase()
        .mustHaveUppercase()
        .mustHaveNumber()
        .mustHaveSpecialCharacter();
  }
}
