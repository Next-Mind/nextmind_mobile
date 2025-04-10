// ignore_for_file: prefer_final_fields, unused_field, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nextmind_mobile/ui/chat/view_models/chat_screen_viewmodel.dart';
import 'package:nextmind_mobile/ui/chat/widgets/chat_summary.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final viewModel = ChatScreenViewmodel();
  final formKey = GlobalKey<FormState>();


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
          child: Form(
            key: formKey, // associando a chave
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/images/add_contacts.svg',
                  height: 100,
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: viewModel.addPeopleController,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Campo obrigatório';
                    }
                    if (!viewModel.isValidEmail(value.trim())) {
                      return 'E-mail inválido';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Pesquisar...",
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // tudo certo, pode continuar
                      print("Email válido: ${viewModel.addPeopleController.text}");
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text("Adicionar"),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}


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
                    child: TextFormField(
                  controller: viewModel.searchPeopleController,
                  validator: (value) {
                    if (value!.isEmpty) {
                        return 'fieldNotEmpty';
                      }
                      if (!viewModel.isValidEmail(value)) {
                        return 'fieldEmailInvalid';
                      }
                      return null;
                  },
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