import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository_remote.dart';
import 'package:nextmind_mobile/data/services/api/auth/auth_service.dart';

class RemoteBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(() => AuthRepositoryRemote());
    Get.lazyPut<AuthService>(() => AuthService());
  }
}
