import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/widgets/sign_in_screen.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/personal_info_form.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/sign_up_screen.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/base_screen.dart';
import 'package:nextmind_mobile/ui/core/localization/i18n.dart';
import 'package:nextmind_mobile/ui/core/themes/theme.dart';
import 'package:nextmind_mobile/ui/core/themes/util.dart';
import 'package:nextmind_mobile/utils/bindings/remote_bindings.dart';
import 'package:nextmind_mobile/utils/middlewares/auth_middleware.dart';
import 'package:nextmind_mobile/utils/routes/routes.dart';

import 'ui/splash_screen/widgets/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SplashScreen());
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Inter", "Inter");

    MaterialTheme theme = MaterialTheme(textTheme);
    return GetMaterialApp(
      title: 'NextMind Mobile',
      translations: Messages(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('pt', 'BR'),
      theme: theme.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      initialBinding: RemoteBindings(),
      getPages: [
        GetPage(
          name: Routes.home,
          page: () => BaseScreen(),
          middlewares: [AuthMiddleware()],
          binding: BaseBindings(),
        ),
        GetPage(
          name: Routes.authHome,
          page: () => SignInScreen(),
          binding: SignInBindings(),
        ),
        GetPage(
          name: Routes.authSignup,
          page: () => PersonalInfoForm(),
          binding: SignUpBindings(),
        ),
        GetPage(
          name: Routes.authSignupForm,
          page: () => SignUpScreen(),
          binding: SignUpBindings(),
        )
      ],
    );
  }
}
