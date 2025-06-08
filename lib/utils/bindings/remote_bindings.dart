import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/appointment/appointment_repository.dart';
import 'package:nextmind_mobile/data/repositories/appointment/appointment_repository_local.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository_remote.dart';
import 'package:nextmind_mobile/data/repositories/home_screen/buttons_drawer/buttons_drawer_repository.dart';
import 'package:nextmind_mobile/data/repositories/home_screen/buttons_drawer/buttons_drawer_repository_local.dart';
import 'package:nextmind_mobile/data/repositories/home_screen/dynamic_box/dynamic_box_repository.dart';
import 'package:nextmind_mobile/data/repositories/home_screen/dynamic_box/dynamic_box_repository_local.dart';
import 'package:nextmind_mobile/data/services/auth/auth_client_http.dart';
import 'package:nextmind_mobile/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile/data/services/auth/auth_service.dart';
import 'package:nextmind_mobile/data/services/client_http.dart';
import 'package:nextmind_mobile/data/services/form_builder/form_service.dart';
import 'package:nextmind_mobile/data/services/home_screen/buttons_drawer_local_storage.dart';
import 'package:nextmind_mobile/main_viewmodel.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/view_models/forgot_password_viewmodel.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/view_models/sign_in_viewmodel.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/base_screen/view_models/base_viewmodel.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/drawer_menu/view_models/buttons_drawer_viewmodel.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/drawer_menu/view_models/user_accounts_drawer_header_viewmodel.dart';
import 'package:nextmind_mobile/ui/core/themes/theme_controller.dart';
import 'package:nextmind_mobile/ui/core/wigdets/user_avatar/view_model/user_avatar_viewmodel.dart';
import 'package:nextmind_mobile/ui/form_builder/viewmodels/form_viewmodel.dart';
import 'package:nextmind_mobile/ui/home/view_models/home_viewmodel.dart';
import 'package:nextmind_mobile/ui/home/widgets/dynamic_box/view_models/dynamic_box_viewmodel.dart';
import 'package:nextmind_mobile/ui/home/widgets/linear_calendar/view_models/linear_calendar_viewmodel.dart';
import 'package:nextmind_mobile/ui/home/widgets/next_appointment/view_models/next_appointment_viewmodel.dart';

import '../../data/services/local_storage.dart';

class DynamicFormBinding implements Bindings {
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
    Get.lazyPut(() => HomeViewModel(), fenix: true);
    Get.lazyPut(() => UserAvatarViewmodel(), fenix: true);
    Get.lazyPut(() => LinearCalendarViewmodel(), fenix: true);
    Get.lazyPut(() => NextAppointmentViewmodel(), fenix: true);
    Get.lazyPut<DynamicBoxRepository>(() => DynamicBoxRepositoryLocal(),
        fenix: true);
    Get.lazyPut(() => DynamicBoxViewmodel(), fenix: true);
    Get.lazyPut<UserAccountsDrawerHeaderViewmodel>(
        () => UserAccountsDrawerHeaderViewmodel(),
        fenix: true);
    Get.lazyPut<ButtonsDrawerLocalStorage>(() => ButtonsDrawerLocalStorage(),
        fenix: true);
    Get.lazyPut<ButtonsDrawerRepository>(() => ButtonsDrawerRepositoryLocal(),
        fenix: true);
    Get.lazyPut<ButtonsDrawerViewmodel>(() => ButtonsDrawerViewmodel(),
        fenix: true);
  }
}

setupGlobalDependencies() {
  Get.put<LocalStorage>(LocalStorage());
  Get.put<ClientHttp>(ClientHttp());
  Get.put<AuthClientHttp>(AuthClientHttp());
  Get.put<ThemeController>(ThemeController());
  Get.put<AuthLocalStorage>(AuthLocalStorage());
  Get.put<AuthService>(AuthService());
  Get.put<AuthRepository>(AuthRepositoryRemote());
  Get.put<MainViewModel>(MainViewModel());
  Get.put<AppointmentRepository>(AppointmentRepositoryLocal());
}
