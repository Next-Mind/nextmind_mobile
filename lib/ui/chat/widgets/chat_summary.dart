import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/chat/chat_screen.dart';

class ChatSummaryWidget extends StatelessWidget {
  final ChatSummary chatSummary;

  const ChatSummaryWidget({super.key, required this.chatSummary});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      margin: EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Get.to(() => ChatScreen(chatSummary: chatSummary));
        },
        child: ListTile(
        title: Text(chatSummary.name),
        subtitle: Text(chatSummary.lastMessage),
        leading: Text(chatSummary.photoURL),
      ),
      ),
    );
  }
}

class ChatSummary {
  String name;
  String photoURL;
  String lastMessage;
  ChatSummary({required this.name, required this.photoURL, required this.lastMessage});
}