import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository_remote.dart';
import 'package:nextmind_mobile/data/services/api/auth/auth_service.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/view_models/auth_viewmodel.dart';

class RemoteBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(() => AuthRepositoryRemote());
    Get.lazyPut<AuthService>(() => AuthService());
    Get.lazyPut<AuthViewModel>(() => AuthViewModel());
  }
}
