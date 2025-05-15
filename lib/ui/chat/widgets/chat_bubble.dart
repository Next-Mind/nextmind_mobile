// ignore_for_file: depend_on_referenced_packages, unused_import, unused_element

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/chat/widgets/image_preview_screen.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart' as p;

class ChatBubble extends StatelessWidget {
  final String? text;
  final bool isSender;
  final String? fileName;
  final String? filePath;

  const ChatBubble({
    super.key,
    this.text,
    required this.isSender,
    this.fileName,
    this.filePath,
  });

  bool isImage(String path) {
    final ext = p.extension(path).toLowerCase();
    return ['.png', '.jpg', '.jpeg', '.gif', '.webp'].contains(ext);
  }

  @override
  Widget build(BuildContext context) {
    final isFile = fileName != null && filePath != null;
    final isImg = isFile && isImage(filePath!);

    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: GestureDetector(
        onTap: isFile
            ? () async {
                await OpenFile.open(filePath!);
              }
            : null,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          padding: isImg ? const EdgeInsets.all(0) : const EdgeInsets.all(12),
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
          decoration: BoxDecoration(
            color: isSender ? Theme.of(context).colorScheme.outlineVariant : Theme.of(context).colorScheme.outline,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(16),
              topRight: const Radius.circular(16),
              bottomLeft: Radius.circular(isSender ? 16 : 0),
              bottomRight: Radius.circular(isSender ? 0 : 16),
            ),
          ),
          child: isFile
              ? isImg
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ImagePreviewScreen(imagePath: filePath!),),
                        );
                      },
                      child: Hero(
                        tag: filePath!,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.file(
                            File(filePath!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(Icons.insert_drive_file, size: 28, color: isSender ? Theme.of(context).colorScheme.shadow : Theme.of(context).colorScheme.onPrimary),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  fileName!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: isSender ? Theme.of(context).colorScheme.shadow : Theme.of(context).colorScheme.onPrimary,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "Toque para abrir",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: isSender ? Theme.of(context).colorScheme.shadow : Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
              : Text(
                  text ?? '',
                  style: TextStyle(
                    fontSize: 16,
                    color: isSender ? Theme.of(context).colorScheme.shadow : Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
        ),
      ),
    );
  }
}
