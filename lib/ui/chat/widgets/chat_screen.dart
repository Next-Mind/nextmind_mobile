// ignore_for_file: prefer_final_fields, unused_field, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/chat/widgets/chat_summary.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatSummary> contacts = [
    ChatSummary(name: "Marlon", photoURL: "M", lastMessage: "Olá Mundo"),
    ChatSummary(name: "Marlon", photoURL: "M", lastMessage: "Olá Mundo"),
    ChatSummary(name: "Marlon", photoURL: "M", lastMessage: "Olá Mundo"),
    ChatSummary(name: "Marlon", photoURL: "M", lastMessage: "Olá Mundo"),
    ChatSummary(name: "Marlon", photoURL: "M", lastMessage: "Olá Mundo"),
    ChatSummary(name: "Marlon", photoURL: "M", lastMessage: "Olá Mundo"),
    ChatSummary(name: "Marlon", photoURL: "M", lastMessage: "Olá Mundo"),
    ChatSummary(name: "Marlon", photoURL: "M", lastMessage: "Olá Mundo"),
    ChatSummary(name: "Marlon", photoURL: "M", lastMessage: "Olá Mundo"),
    ChatSummary(name: "Marlon", photoURL: "M", lastMessage: "Olá Mundo"),
    ChatSummary(name: "Marlon", photoURL: "M", lastMessage: "Olá Mundo"),
  ];
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(
          "Mensagens",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 64,
        forceMaterialTransparency: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: ("Pesquisar..."),
                    ),
                )),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(13)),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 15, right: 15),
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return ChatSummaryWidget(
                    chatSummary: contacts[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
