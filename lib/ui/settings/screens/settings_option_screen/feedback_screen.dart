// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  Future<void> _sendEmail(BuildContext context) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'suporte@nextmind.tech',
      queryParameters: {
        'subject': 'Relato de Erro no Aplicativo',
        'body': 'Descreva aqui o problema que você encontrou...',
      },
    );

    final bool launched = await launchUrl(
      emailLaunchUri,
      mode: LaunchMode.externalApplication,
    );

    if (!launched) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Não foi possível abrir o aplicativo de e-mail.'),
          backgroundColor: Theme.of(context).colorScheme.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report a Bug".tr),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        children: [
          Image.asset("assets/images/feedback.png"),
          Text("\nIf you have encountered any issues while using the app, we apologize for the inconvenience. Your cooperation is very important so that we can continually improve your experience. Please describe the error you encountered in as much detail as possible.".tr),
          Text("\nOur team will review your report as soon as possible and work to fix the issue. Thank you for your help!".tr),
          const SizedBox(height: 70),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () => _sendEmail(context),
                child: Text("Confirm".tr),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
