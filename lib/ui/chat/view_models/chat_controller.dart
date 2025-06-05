import 'package:get/get.dart';

class ChatController extends GetxController {
  var messages = <Map<String, dynamic>>[].obs;

  void sendMessage(String text) {
    if (text.trim().isNotEmpty) {
      messages.add({
        'type': 'text',
        'text': text.trim(),
        'isSender': true,
      });
    }
  }

  void addFileMessage(String fileName, String filePath) {
    messages.add({
      'type': 'file',
      'fileName': fileName,
      'filePath': filePath,
      'isSender': true,
    });
  }
}
