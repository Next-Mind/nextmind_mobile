import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/widgets/sign_in_screen.dart';
import 'package:nextmind_mobile/ui/home/widgets/home_screen.dart';

class CheckAuth extends StatelessWidget {
  const CheckAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AuthRepository.to.userIsAuthenticated.value
          ? HomeScreen()
          : SignInScreen(),
    );
  }
}
