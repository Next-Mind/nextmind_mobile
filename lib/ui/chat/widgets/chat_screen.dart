// ignore_for_file: prefer_final_fields, unused_field, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nextmind_mobile/ui/chat/widgets/chat_summary.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

  TextEditingController _searchPeople = TextEditingController();
  TextEditingController _addPeople = TextEditingController();

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
                  controller: _searchPeople,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: ("Pesquisar..."),
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    addContacts(context);
                  },
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
          SizedBox(
            height: 30,
          ),
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

void addContacts(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/images/add_contacts.svg',
                height: 100,
              ),
              SizedBox(height: 15,),
              TextField(
                controller: _addPeople,
                decoration: InputDecoration(
                  hintText: "Pesquisar...",
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: () {
                
              }, child: Text("Adicionar"))
            ],
          ),
        ),
      );
    },
  );
}
