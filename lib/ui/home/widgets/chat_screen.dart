// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mensagens"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Pequisar",
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ), 
        ),
      ),
    );
  }
}