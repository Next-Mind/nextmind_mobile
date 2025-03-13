import 'dart:convert';

class SignUpForm {
  String name;
  DateTime birthday;
  String email;
  String ra;
  String password;
  Map<String, dynamic> questionnaireAnswers;
  String token;

  SignUpForm({
    required this.name,
    required this.birthday,
    required this.email,
    required this.ra,
    required this.password,
    required this.questionnaireAnswers,
    this.token = '',
  });

  factory SignUpForm.init() {
    return SignUpForm(
      name: '',
      birthday: DateTime.fromMillisecondsSinceEpoch(0),
      email: '',
      ra: '',
      password: '',
      questionnaireAnswers: {},
    );
  }

  void setEmail(String email) {
    this.email = email;
  }

  void setPassword(String password) {
    this.password = password;
  }

  void setName(String name) {
    this.name = name;
  }

  void setBirthday(DateTime birthday) {
    this.birthday = birthday;
  }

  void setRa(String ra) {
    this.ra = ra;
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'birthday': birthday,
      'email': email,
      'ra': ra,
      'password': password,
      'questionnaire': questionnaireAnswers
    };
  }

  String toJson() {
    return jsonEncode(toMap());
  }
}
