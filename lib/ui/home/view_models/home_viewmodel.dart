import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:result_dart/result_dart.dart';

class HomeViewModel extends GetxController {
  final AuthRepository _authRepository = AuthRepository.to;

  var user = User().obs;

  @override
  void onInit() async {
    super.onInit();
    await _authRepository
        .getUser()
        .onSuccess((success) => user.value = success);
    update();
  }

  static HomeViewModel get to => Get.find<HomeViewModel>();

  void logout() {
    _authRepository.logout().onSuccess(
      (_) {
        Get.offAllNamed('/auth');
      },
    );
  }
}
