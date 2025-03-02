import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository_remote.dart';
import 'package:nextmind_mobile/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile/data/services/auth/auth_service.dart';
import 'package:nextmind_mobile/data/services/form_builder/form_service.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/view_models/forgot_password_viewmodel.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/view_models/sign_in_viewmodel.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/base_screen/view_models/base_viewmodel.dart';
import 'package:nextmind_mobile/ui/form_builder/viewmodels/form_viewmodel.dart';
import 'package:nextmind_mobile/ui/home/view_models/home_viewmodel.dart';

import '../../data/services/local_storage.dart';

class RemoteBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(() => AuthRepositoryRemote());
    Get.put<LocalStorage>(LocalStorage());
    Get.put<AuthLocalStorage>(AuthLocalStorage());
    Get.put<AuthService>(AuthService());
  }
}

class FormTestBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormService>(() => FormService());
    Get.lazyPut<FormViewModel>(() => FormViewModel());
  }
}

class SignInBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInViewModel>(() => SignInViewModel());
  }
}

class BaseBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseViewModel>(() => BaseViewModel());
  }
}

class SignUpBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpViewModel>(() => SignUpViewModel());
  }
}

class ForgotPasswordBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordViewModel>(() => ForgotPasswordViewModel());
  }
}

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeViewModel(),
    );
  }
}
