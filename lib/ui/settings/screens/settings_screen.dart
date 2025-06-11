// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile/ui/core/themes/theme_controller.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/legal_information_screen.dart';
import 'package:nextmind_mobile/ui/settings/widgets/settings_item.dart';
import 'package:nextmind_mobile/ui/settings/widgets/settings_item_switch.dart';
import 'package:nextmind_mobile/ui/settings/widgets/user_info_card.dart';
import 'package:nextmind_mobile/utils/routes/app_routes.dart';

class SettingsScreen extends StatefulWidget {
  final AuthLocalStorage authLocalStorage;
  const SettingsScreen({super.key, required this.authLocalStorage});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String name = '';
  String email = '';
  String? photoURL;
  double kItemSpacing = 15;

  @override
  void initState() {
    super.initState();
    _loadUser();
  }

  Future<void> _loadUser() async {
    final result = await widget.authLocalStorage.getUser();
    result.fold(
      (user) {
        setState(() {
          name = user.name;
          email = user.email;
          photoURL = user.profileImage;
        });
      },
      (error) {
        print('Error loading user: $error'.tr);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'.tr),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        children: [
          UserInfoCard(
            name: name.isNotEmpty ? name : 'Loading...'.tr,
            email: email.isNotEmpty ? email : '...',
            photoURL: photoURL,
            onTap: () {
              Get.toNamed(AppRoutes.userAccountScreen, id: 4);
            },
          ),

          const Divider(height: 32),

          // Configurações e Preferências
          sectionTitle('Settings and Preferences'.tr),
          SettingsItem(
            icon: Icons.notifications_none,
            text: 'Notifications'.tr,
            onTap: () {
              Get.toNamed(AppRoutes.notificationScreen, id: 4);
            },
          ),
          SizedBox(
            height: kItemSpacing,
          ),
          SettingsItem(
            icon: Icons.security,
            text: 'Security'.tr,
            onTap: () {
              Get.toNamed(AppRoutes.securityScreen, id: 4);
            },
          ),
          SizedBox(
            height: kItemSpacing,
          ),
          SettingsItemSwitch(
              icon: Icons.dark_mode_outlined,
              text: 'Dark Mode'.tr,
              value: ThemeController.to.isDarkMode.value,
              onChanged: (val) {
                setState(() {
                  ThemeController.to.toggleThemeMode();
                });
              }),
          SizedBox(
            height: kItemSpacing,
          ),
          SettingsItem(
            icon: Icons.language,
            text: "App Language".tr,
            onTap: () {
              Get.toNamed(AppRoutes.languageScreen, id: 4);
            },
          ),

          const Divider(height: 32),

          // Suporte
          sectionTitle('Support'.tr),
          SettingsItem(
            icon: Icons.help_outline,
            text: 'Help Center'.tr,
            onTap: () {
              Get.toNamed(AppRoutes.helpCentralScreen, id: 4);
            },
          ),
          SizedBox(
            height: kItemSpacing,
          ),
          SettingsItem(
            icon: Icons.flag_outlined,
            text: 'Report a Bug'.tr,
            onTap: () {
              Get.toNamed(AppRoutes.feedbackScreen, id: 4);
            },
          ),

          const Divider(height: 32),

          // Sobre o aplicativo
          sectionTitle('About the Application'.tr),
          SettingsItem(
            icon: Icons.info_outline,
            text: 'Legal Information'.tr,
            onTap: () {
              Get.dialog(
                LegalInformationScreen(),
                barrierColor: Theme.of(context).colorScheme.surface,
                transitionCurve: Curves.easeInOut,
              );
            },
          ),
          SizedBox(
            height: kItemSpacing,
          ),
          SettingsItem(
            icon: Icons.developer_board,
            text: 'Software Information'.tr,
            onTap: () {
              Get.toNamed(AppRoutes.softwareInformationScreen, id: 4);
            },
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
