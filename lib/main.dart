import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/core/themes/theme.dart';
import 'package:nextmind_mobile/ui/core/themes/util.dart';
import 'package:nextmind_mobile/utils/bindings/remote_bindings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Inter", "Inter");

    MaterialTheme theme = MaterialTheme(textTheme);
    return GetMaterialApp(
      title: 'NextMind Mobile',
      theme: theme.light(),
      debugShowCheckedModeBanner: false,
      initialBinding: RemoteBindings(),
    );
  }
}
