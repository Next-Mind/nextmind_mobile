// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, unused_import

import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/chat/view_models/chat_controller.dart';

class ChatInputField extends StatelessWidget {
  ChatInputField({super.key});
  final TextEditingController _messageController = TextEditingController();
  final ChatController chatController = Get.find();

  Future<void> pickFile() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if(result != null){
        final file = result.files.first;
      chatController.addFileMessage(file.name, file.path ?? '');
    }
  }

  void  showImageSourceSelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('Câmera'),
              onTap: () async {
                Navigator.pop(context);
                final image = await ImagePicker().pickImage(source: ImageSource.camera);
                if (image != null) {
                  chatController.addFileMessage(image.name, image.path);
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_library),
              title: Text('Galeria'),
              onTap: () async {
                Navigator.pop(context);
                final image = await ImagePicker().pickImage(source: ImageSource.gallery);
                if (image != null) {
                  chatController.addFileMessage(image.name, image.path);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String text;
    return Container(
      padding: const EdgeInsets.all(12),
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerLowest,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: InputDecoration(
                        hintText: 'Mensagem',
                        border: InputBorder.none,
                        fillColor: Theme.of(context).colorScheme.surfaceContainerLowest,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.attach_file, size: 20),
                    onPressed: () {
                      pickFile();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.camera_alt, size: 20),
                    onPressed: () {
                      showImageSourceSelector(context);
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.send, color: Theme.of(context).colorScheme.onPrimary, size: 20),
              onPressed: () {
                final text = _messageController.text;
                chatController.sendMessage(text);
                _messageController.clear();
              },
            ),
          ),
        ],
      ),
    );
  }
}