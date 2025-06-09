import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF006B7F),
            Color(0xFF549E34),
          ],
        ),
      ),
      child: Center(
        child: Image.asset(
          "assets/images/nextmind/logotipo_nextmind_branco_icone.png",
          width: 100,
        ),
      ),
    );
  }
}
