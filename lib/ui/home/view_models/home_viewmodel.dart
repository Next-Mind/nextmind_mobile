import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';

class HomeViewModel extends GetxController {
  final AuthRepository _authRepository = AuthRepository.to;

  late final User user;

  @override
  void onInit() {
    super.onInit();
    user = _authRepository.user!;
  }

  static HomeViewModel get to => Get.find<HomeViewModel>();

  void logout() {
    _authRepository.logout();
  }
}
