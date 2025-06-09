// ignore_for_file: unnecessary_type_check, unnecessary_cast, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:nextmind_mobile/ui/home/view_models/home_viewmodel.dart';
import 'package:nextmind_mobile/ui/settings/widgets/settings_info_item.dart';

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = HomeViewModel.to;

    // Verifica se é um LoggedUser
    if (viewModel.user is! LoggedUser) {
      return Scaffold(
        appBar: AppBar(title: Text('Minha Conta'.tr)),
        body: Center(
          child: Text('Usuário não autenticado'.tr),
        ),
      );
    }

    final user = viewModel.user as LoggedUser;

    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Conta'.tr),
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
                    backgroundImage: user.profileImage != null &&
                            user.profileImage!.isNotEmpty
                        ? NetworkImage(user.profileImage!)
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
              'Informações de Perfil'.tr,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            InfoItem(title: "Nome", subtitle: user.name),
            const SizedBox(height: 10),
            InfoItem(title: "Data", subtitle: user.birthDate ?? 'Não informado'),
            const SizedBox(height: 10),
            InfoItem(title: "Email", subtitle: user.email),
            const SizedBox(height: 10),
            InfoItem(title: "RA", subtitle: user.ra ?? 'Não informado'),
            const SizedBox(height: 30),
            Center(
              child: TextButton.icon(
                onPressed: viewModel.logout,
                icon: Icon(Icons.logout, color: Theme.of(context).colorScheme.error),
                label: Text(
                  'Sair da Conta'.tr,
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
