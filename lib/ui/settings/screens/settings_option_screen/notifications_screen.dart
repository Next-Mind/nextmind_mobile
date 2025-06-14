// ignore_for_file: unused_local_variable, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_screen.dart';
import 'package:nextmind_mobile/ui/settings/widgets/settings_item_radio.dart';
import 'package:nextmind_mobile/ui/settings/widgets/settings_item_switch.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool isNotify = false;
  bool isConversation = false;
  String selectedOption = 'All'.tr;
  double kItemSpacing = 32;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notificações".tr),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        children: [
          SizedBox(
            height: 10,
          ),
          SettingsItemSwitch(
            icon: Icons.notifications_none,
            text: 'Permitir Notificações',
            value: isNotify,
            onChanged: (value) {
              setState(() {
                isNotify = value;
              });
            },
          ),
          SizedBox(height: kItemSpacing,),
          sectionTitle('Alertas'),
          SettingsItemRadio(
            text: 'Permitir lembrete do Alarme', 
            value: 'All', 
            groupValue: selectedOption, 
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
          Divider(height: 32,),
          SettingsItemRadio(
            text: 'Silencioso', 
            value: 'none', 
            groupValue: selectedOption, 
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
          SizedBox(height: kItemSpacing,),
          sectionTitle('Mensagens'),
          SettingsItemSwitch(
            text: 'Sons de Conversa', 
            icon: Icons.message,
            value: isConversation, 
            onChanged: (value) {
              setState(() {
                isConversation = value;
              });
            },
          )
        ],
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title.tr,
        style: TextStyle(
          color: Theme.of(context).colorScheme.outline,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


