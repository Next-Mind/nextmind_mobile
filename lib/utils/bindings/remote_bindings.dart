import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository_remote.dart';
import 'package:nextmind_mobile/data/services/api/auth/auth_service.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/view_models/sign_in_viewmodel.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/home/view_models/home_viewmodel.dart';

import '../../ui/auth/sign_up/view_models/personal_info_form_viewmodel.dart';

class RemoteBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(() => AuthRepositoryRemote());
    Get.lazyPut<AuthService>(() => AuthService());
    Get.lazyPut<AuthViewModel>(() => AuthViewModel());
    Get.lazyPut<HomeViewModel>(() => HomeViewModel());
    Get.put<SignUpViewModel>(SignUpViewModel());
    Get.put<PersonalInfoFormViewModel>(PersonalInfoFormViewModel());
  }
}
