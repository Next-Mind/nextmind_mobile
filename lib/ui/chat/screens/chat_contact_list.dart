// ignore_for_file: prefer_final_fields, unused_field, sort_child_properties_last, avoid_print, use_build_context_synchronously, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/models/user_model.dart';
import 'package:nextmind_mobile/ui/chat/view_models/chat_contact_list_viewmodel.dart';
import 'package:nextmind_mobile/ui/chat/widgets/chat_summary.dart';

class ChatContactList extends StatefulWidget {
  const ChatContactList({super.key});

  @override
  State<ChatContactList> createState() => _ChatContactListState();
}

class _ChatContactListState extends State<ChatContactList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
                    decoration: InputDecoration(
                      hintText: "Pesquisar...".tr,
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        final id = viewModel.addPeopleController.text.trim();
                        await viewModel.addNewContact(int.parse(id));
                        await viewModel.getAvailableUsers();
                        viewModel.addPeopleController.clear();
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text("Adicionar".tr,
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _showEditDialog(BuildContext context, UserModel user) async {
    final TextEditingController nameController =
        TextEditingController(text: user.nickname);

    await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Editar Nome'.tr),
        content: TextFormField(
          controller: nameController,
          decoration: InputDecoration(labelText: 'Nome'.tr),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text('Cancelar'.tr),
          ),
          ElevatedButton(
            onPressed: () async {
              await viewModel.updateContact(
                  user.id, nameController.text.trim());
              Navigator.of(ctx).pop();
              await viewModel.fetchContacts();
            },
            child: Text('Salvar'.tr),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: Text(
            "Mensagens".tr,
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
                        return 'fieldNotEmpty'.tr;
                      }
                      if (!viewModel.isValidEmail(value)) {
                        return 'fieldEmailInvalid'.tr;
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: ("Pesquisar...".tr),
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
  child: Obx(() {
    if (viewModel.isLoading.value) {
      return const Center(child: CircularProgressIndicator());
    }

    if (viewModel.error.value.isNotEmpty) {
      return Center(child: Text(viewModel.error.value));
    }

    if (viewModel.users.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.chat_bubble_outline, size: 60, color: Colors.grey),
              const SizedBox(height: 20),
              Text(
                "Você ainda não tem conversas.".tr,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "Adicione contatos para começar a conversar.".tr,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () => addContacts(context),
                icon: Icon(Icons.person_add, color: Colors.white),
                label: Text("Adicionar contato".tr),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24, 
                    vertical: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async => await viewModel.fetchContacts(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: viewModel.users.map((user) {
            final chatSummary = ChatSummary(
              name: user.nickname,
              photoURL: user.profileImage,
              lastMessage: user.id.toString(), // Ultima mensagem, apenas de teste o ID.
            );

            return Dismissible(
              key: Key(user.id.toString()),
              background: Container(
                color: Theme.of(context).colorScheme.onTertiaryFixedVariant,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.only(bottom: 15),
                child: Icon(Icons.edit, color: Colors.white),
              ),
              secondaryBackground: Container(
                color: Theme.of(context).colorScheme.error,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.only(bottom: 15),
                child: Icon(Icons.delete, color: Colors.white),
              ),
              confirmDismiss: (direction) async {
                if (direction == DismissDirection.startToEnd) {
                  await _showEditDialog(context, user);
                  return false;
                } else if (direction == DismissDirection.endToStart) {
                  bool? confirm = await showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text('Confirmar'.tr),
                      content: Text('Tem certeza que deseja excluir este contato?'.tr),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(ctx).pop(false),
                          child: Text('Cancelar'.tr),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(ctx).pop(true),
                          child: Text('Excluir'.tr),
                        ),
                      ],
                    ),
                  );
                  if (confirm == true) {
                    await viewModel.deleteContact(user.id);
                    await viewModel.fetchContacts();
                  }
                  return confirm ?? false;
                }
                return false;
              },
              child: ChatSummaryWidget(chatSummary: chatSummary),
            );
          }).toList(),
        ),
      ),
    );
  }),
),
          ],
        ));
  }
}
