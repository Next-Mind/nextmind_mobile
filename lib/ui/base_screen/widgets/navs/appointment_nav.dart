import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/navs/navs_ids.dart';
import 'package:nextmind_mobile/ui/home/widgets/home_screen.dart';

class AppointmentNav extends StatelessWidget {
  const AppointmentNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(NavsIds.appointment),
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return GetPageRoute(
            settings: settings,
            page: () => HomeScreen(),
          );
        }
        return null;
      },
    );
  }
}
