import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Idioma'.tr),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          LanguageTile(
            title: 'Português (Brasil)',
            locale: const Locale('pt', 'BR'),
          ),
          LanguageTile(
            title: 'English (US)',
            locale: const Locale('en', 'US'),
          ),
        ],
      ),
    );
  }
}

class LanguageTile extends StatelessWidget {
  final String title;
  final Locale locale;

  const LanguageTile({super.key, required this.title, required this.locale});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Get.locale == locale
          ? Icon(Icons.check, color: Theme.of(context).colorScheme.primary)
          : null,
      onTap: () {
        Get.updateLocale(locale);
        Get.snackbar(
          'Idioma'.tr,
          'Idioma alterado para $title',
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 2),
        );
      },
    );
  }
}
