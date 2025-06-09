// ignore_for_file: unused_import

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile/ui/home/widgets/home_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_screen.dart';

class SettingsNav extends StatelessWidget {
  const SettingsNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(GlobalKey<NavigatorState>()),
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return GetPageRoute(
            settings: settings,
            page: () => SettingsScreen(authLocalStorage: AuthLocalStorage(),),
          );
        }
        return null;
      },
    );
  }
}
