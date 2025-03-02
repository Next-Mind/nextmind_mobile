import 'dart:convert';

import 'package:logger/logger.dart';

class SignUpForm {
  String name;
  DateTime? birthday;
  String email;
  String ra;
  String password;

  bool formSubmitted = false;

  final Logger _logger = Logger();

  SignUpForm({
    this.name = '',
    this.email = '',
    this.ra = '',
    this.password = '',
  });

  void setEmail(String email) {
    _logger.d("Input email changed: ${this.email}");
    this.email = email;
  }

  void setPassword(String password) {
    _logger.d("Input password changed: ${this.password}");
    this.password = password;
  }

  void setName(String name) {
    _logger.d("Input name changed: ${this.name}");
    this.name = name;
  }

  void setBirthday(DateTime birthday) {
    _logger.d("Input birthday changed: ${this.birthday}");
    this.birthday = birthday;
  }

  void setRa(String ra) {
    _logger.d("Input ra changed: ${this.ra}");
    this.ra = ra;
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'birthday': birthday,
      'email': email,
      'ra': ra,
      'password': password,
    };
  }

  String toJson() {
    return jsonEncode(toMap());
  }
}
