// ignore_for_file: unused_element, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpCentralScreen extends StatelessWidget {
  const HelpCentralScreen({super.key});

  Future<void> _sendEmail(BuildContext context) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'suporte@nextmind.tech',
      queryParameters: {
        'subject': 'Ajuda com o Aplicativo',
        'body': 'Descreva aqui a sua necessidade...',
      },
    );

    final bool launched = await launchUrl(
      emailLaunchUri,
      mode: LaunchMode.externalApplication,
    );

    if (!launched) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Não foi possível abrir o aplicativo de e-mail.'.tr),
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
        title: Text("Central de Ajuda".tr),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        children: [
          Image.asset("assets/images/help_central.png"),
          Text("\nSe você estiver enfrentando problemas ou tiver dúvidas sobre como usar o aplicativo, estamos aqui para ajudar!".tr),
          Text("\nAcesse nossa Central de Ajuda para encontrar respostas para perguntas frequentes, tutoriais e orientações passo a passo. Caso precise de suporte adicional, você também poderá entrar em contato com a nossa equipe diretamente por aqui.".tr),
          SizedBox(height: 70,),
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
