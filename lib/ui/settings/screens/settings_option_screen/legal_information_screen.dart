import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/legal_detail_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/legal_info_item_screen.dart';

class LegalInformationScreen extends StatefulWidget {
  const LegalInformationScreen({super.key});

  @override
  State<LegalInformationScreen> createState() => _LegalInformationScreenState();
}

class _LegalInformationScreenState extends State<LegalInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Legal Information".tr),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        children: [
          SizedBox(height: 32,),
          LegalInfoItem(
            title: "Project Legal Information".tr, 
            onTap: () => Get.to(() => const LegalDetailScreen(
            title: "Project Information", 
              content: "This application was developed with the purpose of making users' lives easier through technology, respecting data protection laws and guidelines for the use of free and proprietary software.\n\nAll brands, logos and content used in the application belong to their respective owners. The project respects the principles of transparency, responsibility and digital ethics.",
            )),
          ),
          SizedBox(height: 15,),
          LegalInfoItem(
            title: "Google Legal Information".tr, 
            onTap: () => Get.to(() => const LegalDetailScreen(
            title: "Google Information", 
              content: "This application may use APIs and services provided by Google, including Firebase, Google Maps, Google Sign-In, among others.\n\nThe use of these services is subject to the Google Terms of Service and the Google Privacy Policy. The use of the application implies the acceptance of these conditions, as well as the compliance with the practices required by the Google APIs.",
            )),
          ),
          SizedBox(height: 15,),
          LegalInfoItem(
            title: "Terms and Policy".tr, 
            onTap: () => Get.to(() => const LegalDetailScreen(
            title: "Terms and Policy", 
              content: "By using this application, you agree to our Terms of Use and Privacy Policy.\n\nOur commitment is to ensure transparency in the processing of your data, respecting your privacy and protecting your personal information.\n\nWe recommend that you read the terms and policies in full to understand your rights and duties as a user.",
            )),
          ),
          SizedBox(height: 15,),
          LegalInfoItem(
            title: "Terms of Use".tr, 
            onTap: () => Get.to(() => const LegalDetailScreen(
            title: "Terms of Use", 
              content: "The use of this application is permitted only for lawful purposes and as provided for in these Terms of Use.\n\nThe user agrees to:\n- Use the application ethically;\n- Not share malicious or illegal content;\n- Respect other users and the system's features.\n\nFailure to comply with these terms may result in suspension or deletion of the account.",
            )),
          ),
          SizedBox(height: 15,),
          LegalInfoItem(
            title: "Privacy Policy".tr, 
            onTap: () => Get.to(() => const LegalDetailScreen(
            title: "Privacy Policy", 
              content: "We collect and use your personal information only when necessary to provide and improve our services.\n\nYour data is treated securely and is not shared with third parties without your permission, except when required by law.\n\nYou can at any time request the deletion or modification of your data, as provided for in the General Data Protection Law (LGPD).",
            )),
          ),
        ],
      ),
    );
  }
}