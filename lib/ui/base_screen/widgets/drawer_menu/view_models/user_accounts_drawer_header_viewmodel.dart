import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:result_dart/result_dart.dart';

class UserAccountsDrawerHeaderViewmodel extends GetxController {
  static UserAccountsDrawerHeaderViewmodel get to =>
      Get.find<UserAccountsDrawerHeaderViewmodel>();

  final AuthRepository _authRepository = AuthRepository.to;

  var userName = 'Username'.obs;
  var userEmail = 'email@example.com'.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeUserDetails();
  }

  void _initializeUserDetails() async {
    final user = await _authRepository.getUser().getOrThrow();
    userName.value = user.name;
    userEmail.value = user.email;
  }
}
