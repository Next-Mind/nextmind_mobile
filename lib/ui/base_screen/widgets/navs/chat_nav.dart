import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/navs/navs_ids.dart';
import 'package:nextmind_mobile/ui/home/widgets/chat_screen.dart';


class ChatNav extends StatelessWidget {
  const ChatNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(NavsIds.chat),
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return GetPageRoute(
            settings: settings,
            page: () => ChatScreen(),
          );
        }
        return null;
      },
    );
  }
}
