import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/chat/screens/chat_screen.dart';
import 'package:nextmind_mobile/ui/chat/screens/contact_account_screen.dart';

class ChatSummaryWidget extends StatelessWidget {
  final ChatSummary chatSummary;
  final ChatContactInfo contact;

  const ChatSummaryWidget({super.key, required this.chatSummary, required this.contact});

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
        leading: GestureDetector(
          child: Image.network(
            chatSummary.photoURL,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset('assets/images/placeholder_user.png');
            },
          ),
          onTap: () {
            // Chamar tela para abrir a conta do contato
            Navigator.push(context, MaterialPageRoute(builder: (context) => ContactAccountScreen(contact: contact),));
          },
        )
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

class ChatContactInfo {
  String name;
  String photoURL;
  String email;
  int id;
  String phone;

  ChatContactInfo({required this.name, required this.photoURL, required this.email, required this.id, required this.phone});
}