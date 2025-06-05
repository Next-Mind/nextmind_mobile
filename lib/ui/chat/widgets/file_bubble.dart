// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class FileBubble extends StatelessWidget {
  final String fileName;
  final String filePath;
  
  const FileBubble({required this.fileName, required this.filePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.insert_drive_file, color: Colors.blue),
          const SizedBox(width: 8),
          Expanded(child: Text(fileName, overflow: TextOverflow.ellipsis)),
          IconButton(
            icon: const Icon(Icons.open_in_new),
            onPressed: () {
              
            },
          ),
        ],
      ),
    );
  }
}