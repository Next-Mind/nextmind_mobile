// ignore_for_file: unused_field, unused_local_variable, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/settings/widgets/settings_info_item.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SoftwareInformationScreen extends StatefulWidget {
  const SoftwareInformationScreen({super.key});

  @override
  State<SoftwareInformationScreen> createState() =>
      _SoftwareInformationScreenState();
}

class _SoftwareInformationScreenState extends State<SoftwareInformationScreen> {
  late Future<PackageInfo> _packageInfo;

  @override
  void initState() {
    _packageInfo = PackageInfo.fromPlatform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações de Software".tr),
      ),
      body: FutureBuilder<PackageInfo>(
          future: _packageInfo,
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return const Center(child: CircularProgressIndicator());

            final info = snapshot.data!;
            return ListView(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
              children: [
                SizedBox(
                  height: 32,
                ),
                InfoItem(title: "Nome do App", subtitle: info.appName),
                SizedBox(
                  height: 15,
                ),
                InfoItem(title: "Versão do Sistema", subtitle: info.version),
                SizedBox(
                  height: 15,
                ),
                InfoItem(
                    title: "Ultima Atualização", subtitle: "5 de Jun de 2025"),
                SizedBox(
                  height: 15,
                ),
                InfoItem(title: "Codigo da Build", subtitle: info.buildNumber),
                SizedBox(
                  height: 15,
                ),
                InfoItem(title: "Nome do Pacote", subtitle: info.packageName),
              ],
            );
          }),
    );
  }
}
