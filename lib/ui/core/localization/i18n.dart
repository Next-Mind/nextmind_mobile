import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'fieldEmailNotEmpty': 'Email must not be empty',
          'fieldEmailInvalid': 'Email is invalid',
          'fieldHintTextEmail': 'Email',
          'fieldHintTextPassword': 'Password',
          'fieldPasswordNotEmpty': 'Password must not be empty',
          'fieldPasswordMinLength': 'Password must have at least 8 characters',
          'forgotPassword': 'Forgot password?',
          'signIn': 'Sign In',
          'signUp': 'Sign Up',
          'loginFailed': 'Invalid email or password.',
          'sigInAborted': 'Sign in aborted by user',
        },
        'pt_BR': {
          'fieldEmailNotEmpty': 'O campo email não pode ser vazio',
          'fieldEmailInvalid': 'Email inválido',
          'fieldHintTextEmail': 'Digite seu email',
          'fieldHintTextPassword': 'Digite sua senha',
          'fieldPasswordNotEmpty': 'O campo senha não pode ser vazio',
          'fieldPasswordMinLength': 'A senha deve ter no mínimo 8 caracteres',
          'forgotPassword': 'Esqueceu a senha?',
          'signIn': 'Entrar',
          'signUp': 'Criar Conta',
          'loginFailed': 'Email ou senha inválidos.',
          'sigInAborted': 'Login cancelado pelo usuário',
        },
      };
}
