// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nextmind_mobile/ui/home/view_models/home_viewmodel.dart';
import 'package:nextmind_mobile/ui/settings/widgets/settings_info_item.dart';

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = HomeViewModel.to;

    if (!viewModel.isLogged || viewModel.loggedUser == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Account'.tr),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final user = viewModel.loggedUser!;
    String formatDate(String rawDate) {
      try {
        final date = DateTime.parse(rawDate);
        return DateFormat('dd/MM/yyyy').format(date);
      } catch (e) {
        return rawDate;
      }
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: user.profileImage.isNotEmpty
                        ? NetworkImage(user.profileImage)
                        : const AssetImage('assets/images/placeholder_user.png')
                            as ImageProvider,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 16,
                      child: const Icon(Icons.edit, size: 18, color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user.email,
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
            InfoItem(title: "Name", subtitle: user.name),
            const SizedBox(height: 10),
            InfoItem(title: "Date", subtitle: formatDate(user.birthDate)),
            const SizedBox(height: 10),
            InfoItem(title: "Email", subtitle: user.email),
            const SizedBox(height: 10),
            InfoItem(title: "RA", subtitle: user.ra),
            const SizedBox(height: 30),
            Center(
              child: TextButton.icon(
                onPressed: viewModel.logout,
                icon: Icon(Icons.logout, color: Theme.of(context).colorScheme.error),
                label: Text(
                  'Logout of Account'.tr,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
