import 'package:get/get.dart';
//import 'package:nextmind_mobile/utils/middlewares/auth_middleware.dart';
import 'package:nextmind_mobile/ui/form_builder/widgets/form_page.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/widgets/forgot_password_screen.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/widgets/sign_in_screen.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/sign_up_screen.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/base_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/feedback_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/help_central_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/language_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/legal_information_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/notifications_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/security_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/software_information_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/user_account_screen.dart';
import 'package:nextmind_mobile/ui/splash_screen/widgets/loading_screen.dart';
import 'package:nextmind_mobile/ui/splash_screen/widgets/splash_screen.dart';
import 'package:nextmind_mobile/utils/bindings/remote_bindings.dart';

class AppRoutes {
  static String get home => '/home';
  static String get authHome => '/auth';
  static String get authSignup => '/auth/signup';
  static String get authForgotPassword => '/auth/forgot-password';
  static String get authSignupForm => '/auth/signup/form';
  static String get authSignupFormGoogle => '/auth/form-google';
  static String get formTest => '/tests/form';
  static String get splashScreen => '/splash';
  static String get loadingScreen => '/loading';
  static String get notificationScreen => '/notification';
  static String get securityScreen => '/security';
  static String get helpCentralScreen => '/help';
  static String get feedbackScreen => '/feedback';
  static String get legalInformationScreen => '/legalInformation';
  static String get softwareInformationScreen => '/softwareInformation';
  static String get languageScreen => '/language';
  static String get userAccountScreen => '/userAccount';

  static List<GetPage> get pages => [
        GetPage(
          name: AppRoutes.authSignupFormGoogle,
          page: () => FormScreen(
            formPath: 'assets/form_data_google.json',
            theme: 'Progressive',
            onSubmit: Get.arguments,
          ),
          binding: DynamicFormBinding(),
        ),
        GetPage(
          name: AppRoutes.authSignupForm,
          page: () => FormScreen(
            formPath: 'assets/form_data.json',
            theme: 'Progressive',
            onSubmit: Get.arguments,
          ),
          binding: DynamicFormBinding(),
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
          page: () => SignUpScreen(),
          binding: SignUpBindings(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: AppRoutes.authForgotPassword,
          page: () => ForgotPasswordScreen(),
          binding: ForgotPasswordBindings(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: AppRoutes.splashScreen,
          page: () => SplashScreen(),
        ),
        GetPage(
          name: AppRoutes.loadingScreen,
          page: () => LoadingScreen(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1),
        ),GetPage(
          name: AppRoutes.notificationScreen,
          page: () => NotificationsScreen(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1),
        ),GetPage(
          name: AppRoutes.securityScreen,
          page: () => SecurityScreen(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: AppRoutes.helpCentralScreen,
          page: () => HelpCentralScreen(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: AppRoutes.feedbackScreen,
          page: () => FeedbackScreen(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: AppRoutes.legalInformationScreen,
          page: () => LegalInformationScreen(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: AppRoutes.softwareInformationScreen,
          page: () => SoftwareInformationScreen(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: AppRoutes.languageScreen,
          page: () => LanguageScreen(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: AppRoutes.userAccountScreen,
          page: () => UserAccountScreen(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(seconds: 1),
        ),
      ];
}
