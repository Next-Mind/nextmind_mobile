// ignore_for_file: unused_import

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile/ui/home/widgets/home_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/user_account_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_screen.dart';
import 'package:nextmind_mobile/utils/routes/app_routes.dart';

class SettingsNav extends StatelessWidget {
  const SettingsNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(4),
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return GetPageRoute(
            settings: settings,
            page: () => SettingsScreen(
              authLocalStorage: AuthLocalStorage(),
            ),
          );
        } else if (settings.name == AppRoutes.userAccountScreen) {
          return GetPageRoute(
            page: () => UserAccountScreen(),
            transition: Transition.circularReveal,
            transitionDuration: Duration(seconds: 1),
            settings: settings,
          );
        }

        return null;
      },
    );
  }
}
