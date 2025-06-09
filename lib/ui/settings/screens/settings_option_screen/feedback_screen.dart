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
        title: Text("Reportar Erro".tr),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        children: [
          Image.asset("assets/images/feedback.png"),
          Text("\nSe você encontrou algum problema enquanto usava o aplicativo, pedimos desculpas pelo transtorno. Sua colaboração é muito importante para que possamos melhorar continuamente a sua experiência. Por favor, descreva o erro encontrado com o máximo de detalhes possível.".tr),
          Text("\nNossa equipe analisará o seu relato o mais rápido possível e trabalhará para corrigir o problema. Agradecemos pela sua ajuda!".tr),
          const SizedBox(height: 70),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () => _sendEmail(context),
                child: Text("Confirmar".tr),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
