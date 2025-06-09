import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LegalInfoItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const LegalInfoItem({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title.tr),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      dense: true,
      minVerticalPadding: 12,
    );
  }
}