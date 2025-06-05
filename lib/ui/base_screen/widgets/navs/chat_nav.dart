// ignore_for_file: unused_import

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/chat/screens/chat_screen.dart';
import 'package:nextmind_mobile/ui/chat/screens/chat_contact_list.dart';
import 'package:nextmind_mobile/ui/home/widgets/home_screen.dart';

class ChatNav extends StatelessWidget {
  const ChatNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(GlobalKey<NavigatorState>()),
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return GetPageRoute(
            settings: settings,
            page: () => ChatContactList(),
          );
        }
        return null;
      },
    );
  }
}
