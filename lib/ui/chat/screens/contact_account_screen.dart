import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/chat/widgets/chat_summary.dart';
import 'package:nextmind_mobile/ui/settings/widgets/settings_info_item.dart';

class ContactAccountScreen extends StatelessWidget {
  final ChatContactInfo contact;
  const ContactAccountScreen({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato".tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: contact.photoURL.isNotEmpty
                    ? NetworkImage(contact.photoURL)
                    : const AssetImage('assets/images/placeholder.png')
                        as ImageProvider,
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: Column(
                children: [
                  Text(
                    contact.name,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    contact.email,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Profile Information'.tr,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            InfoItem(title: "Name".tr, subtitle: contact.name),
            const SizedBox(height: 10),
            InfoItem(title: "Email".tr, subtitle: contact.email),
            const SizedBox(height: 10),
            InfoItem(title: "Phone".tr, subtitle: contact.phone.isEmpty ? 'Não Identificado' : contact.phone),
            const SizedBox(height: 10,),
            InfoItem(title: "ID", subtitle: contact.id.toString()),
          ],
        ),
      ),
    );
  }
}
