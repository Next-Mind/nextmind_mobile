import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoItem extends StatelessWidget{
  final String title;
  final String subtitle;

  const InfoItem({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title.tr,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(subtitle.tr),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      minVerticalPadding: 12,
    );
  }
}