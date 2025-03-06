import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/utils/routes/app_routes.dart';

class MainViewModel extends GetxController {
  final Logger _logger = Logger();
  final AuthRepository _authRepository = Get.find<AuthRepository>();
  @override
  void onInit() {
    super.onInit();
    _logger.d('Initializing Main Viewmodel');
    ever(_authRepository.userIsAuthenticated, (authenticated) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        authenticated
            ? Get.offAllNamed(AppRoutes.home)
            : Get.offAllNamed(AppRoutes.authHome);
      });
    });
  }
}
