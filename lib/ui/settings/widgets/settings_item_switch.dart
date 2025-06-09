import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsItemSwitch extends StatelessWidget {
  final IconData? icon;
  final String text;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SettingsItemSwitch({
    this.icon,
    required this.text,
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.outline),
      title: Text(text.tr),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      dense: true,
      minVerticalPadding: 12,
    );
  }
}
