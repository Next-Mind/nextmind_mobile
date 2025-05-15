// ignore_for_file: prefer_final_fields, unused_field, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/chat/view_models/chat_contact_list_viewmodel.dart';
import 'package:nextmind_mobile/ui/chat/widgets/chat_summary.dart';

class ChatContactList extends StatefulWidget {
  const ChatContactList({super.key});

  @override
  State<ChatContactList> createState() => _ChatContactListState();
}

class _ChatContactListState extends State<ChatContactList> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  final ChatContactListViewmodel viewModel =
      Get.put(ChatContactListViewmodel());
  final formKey = GlobalKey<FormState>();

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
              key: formKey,
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
                        print(
                            "Email válido: ${viewModel.addPeopleController.text}");
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
              controller: _scrollController,
              child: Obx(() {
                if (viewModel.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (viewModel.error.value.isNotEmpty) {
                  return Center(child: Text(viewModel.error.value));
                }

                if (viewModel.users.isEmpty) {
                  return const Center(
                      child: Text("Nenhum contato encontrado."));
                }

                return ListView.builder(
                  controller: _scrollController,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: viewModel.users.length,
                  itemBuilder: (context, index) {
                    final user = viewModel.users[index];

                    final chatSummary = ChatSummary(
                      name: user.name,
                      photoURL: user.profileImage,
                      lastMessage:
                          user.phone, // ou um campo real de mensagem se tiver
                    );

                    return ChatSummaryWidget(chatSummary: chatSummary);
                  },
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
