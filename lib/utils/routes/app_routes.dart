import 'package:get/get.dart';
//import 'package:nextmind_mobile/utils/middlewares/auth_middleware.dart';
import 'package:nextmind_mobile/ui/form_builder/widgets/form_page.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/widgets/forgot_password_screen.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/widgets/sign_in_screen.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/sign_up_screen.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/base_screen.dart';
import 'package:nextmind_mobile/utils/bindings/remote_bindings.dart';

class AppRoutes {
  static String get home => '/';
  static String get authHome => '/auth';
  static String get authSignup => '/auth/signup';
  static String get authForgotPassword => '/auth/forgot-password';
  static String get authSignupForm => '/auth/signup/form';
  static String get formTest => '/tests/form';

  static List<GetPage> get pages => [
        GetPage(
          name: AppRoutes.authSignupForm,
          page: () => FormScreen(
            formPath: 'assets/form_data.json',
            theme: 'Progressive',
            onSubmit: Get.arguments,
          ),
          binding: FormTestBinding(),
        ),
        GetPage(
          name: AppRoutes.home,
          page: () => BaseScreen(),
          //middlewares: [AuthMiddleware()],
          binding: BaseBindings(),
        ),
        GetPage(
          name: AppRoutes.authHome,
          page: () => SignInScreen(),
          binding: SignInBindings(),
        ),
        GetPage(
          name: AppRoutes.authSignup,
          page: () => PersonalInfoForm(),
          binding: SignUpBindings(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: AppRoutes.authForgotPassword,
          page: () => ForgotPasswordScreen(),
          binding: ForgotPasswordBindings(),
          transition: Transition.cupertino,
        ),
      ];
}
