import 'package:logger/logger.dart';

class Credentials {
  String email;
  String password;
  DateTime? birthday;
  String? name;
  String? ra;

  Credentials(this.email, this.password, {this.birthday, this.name, this.ra});

  final Logger _logger = Logger();

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
}
