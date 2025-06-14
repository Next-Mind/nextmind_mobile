import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/core/localization/i18n.dart';
import 'package:nextmind_mobile/ui/core/themes/theme.dart';
import 'package:nextmind_mobile/ui/core/themes/util.dart';
import 'package:nextmind_mobile/utils/bindings/remote_bindings.dart';
import 'package:nextmind_mobile/utils/routes/app_routes.dart';
import 'ui/splash_screen/widgets/splash_screen.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SplashScreen());
  await initializeDateFormatting('pt_BR', null);
  await Firebase.initializeApp();
  setupGlobalDependencies();
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
      darkTheme: theme.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.pages,
    );
  }
}
