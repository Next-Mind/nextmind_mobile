import 'package:logger/logger.dart';

class Credentials {
  String email;
  String password;

  Credentials(this.email, this.password);

  final Logger _logger = Logger();

  void setEmail(String email) {
    _logger.d("Input email changed: ${this.email}");
    this.email = email;
  }

  void setPassword(String password) {
    _logger.d("Input password changed: ${this.password}");
    this.password = password;
  }
}
