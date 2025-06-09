import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsItemRadio<T> extends StatelessWidget {
  final String text;
  final T value;
  final T groupValue;
  final ValueChanged<T?> onChanged;

  const SettingsItemRadio({
    required this.text,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text.tr),
      trailing: Radio<T>(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      dense: true,
      minVerticalPadding: 12,
      onTap: () => onChanged(value),
    );
  }
}
