import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/home/widgets/home_screen.dart';
import 'package:nextmind_mobile/utils/bindings/remote_bindings.dart';

class HomeNav extends StatelessWidget {
  const HomeNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(1),
      observers: [HeroController()],
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return GetPageRoute(
            binding: HomeBindings(),
            settings: settings,
            page: () => HomeScreen(),
          );
        }
        return null;
      },
    );
  }
}
