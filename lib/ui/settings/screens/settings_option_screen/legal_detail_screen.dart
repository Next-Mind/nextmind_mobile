import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LegalDetailScreen extends StatelessWidget {
  final String title;
  final String content;

  const LegalDetailScreen({required this.title, required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title.tr)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(content.tr, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}