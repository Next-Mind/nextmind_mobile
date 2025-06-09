// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/settings/widgets/settings_item.dart';
import 'package:nextmind_mobile/ui/settings/widgets/settings_item_switch.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  double kItemSpacing = 32;
  bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segurança".tr),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        children: [
          SizedBox(height: 10,),
          SettingsItem(
            text: "Alterar a senha da conta", 
            icon: Icons.password,
            onTap: () {},
          ),
          SizedBox(height: kItemSpacing,),
          sectionTitle("Config. do App"),
          Divider(height: 15,),
          SettingsItemSwitch(
            text: "Senha ao Abrir o App", 
            value: isPassword, 
            onChanged: (value) {
              setState(() {
                isPassword = value;
              });
            },
          ),
          SizedBox(height: 10,),
          if(isPassword)
            SettingsItem(
            text: "Definir Senha", 
            onTap: () {},
          ),
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