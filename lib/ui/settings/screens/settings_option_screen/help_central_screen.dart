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
          content: Text('Unable to open email application.'.tr),
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
        title: Text("Help Center".tr),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        children: [
          Image.asset("assets/images/help_central.png"),
          Text("\nIf you're experiencing any issues or have questions about using the app, we're here to help!".tr),
          Text("\nVisit our Help Center to find answers to frequently asked questions, tutorials, and step-by-step guidance. If you need additional support, you can also contact our team directly here.".tr),
          SizedBox(height: 70,),
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
