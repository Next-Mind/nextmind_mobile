import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (!AuthRepository.to.userIsAuthenticated.value) {
      return const RouteSettings(name: '/auth');
    }
    return null;
  }
}
