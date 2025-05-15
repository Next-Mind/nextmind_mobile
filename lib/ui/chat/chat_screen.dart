// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/chat/view_models/chat_controller.dart';
import 'package:nextmind_mobile/ui/chat/widgets/chat_bubble.dart';
import 'package:nextmind_mobile/ui/chat/widgets/chat_input_field.dart';
import 'package:nextmind_mobile/ui/chat/widgets/chat_summary.dart';
import 'package:nextmind_mobile/ui/core/themes/colors/menu_app_colors.dart';

class ChatScreen extends StatelessWidget {
  final ChatSummary chatSummary;
  final ChatController chatController = Get.put(ChatController());

  ChatScreen({super.key, required this.chatSummary});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        title: Row(
          children: [
            IconButton(
              onPressed: () => Get.back(), 
              icon: Icon(Icons.arrow_back,),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerLowest,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(chatSummary.photoURL),
                backgroundColor: Colors.grey, //Apenas o icone de fundo
              ),
            ),
            SizedBox(width: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chatSummary.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Online',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() => ListView.builder(
              padding: EdgeInsets.all(12),
              itemCount: chatController.messages.length,
              itemBuilder: (context, index) {
                final msg = chatController.messages[index];
                return ChatBubble(
                    text: msg['text'] ?? '',
                    isSender: msg['isSender'],
                    fileName: msg['fileName'],
                    filePath: msg['filePath'],
                  );
                },
              ),
            ),
          ),
          ChatInputField(),
        ],
      ),
    );
  }
}