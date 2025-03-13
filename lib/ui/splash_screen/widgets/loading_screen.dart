import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final List<String> loadingAnimations = [
    'assets/animations/loading-animation.json',
    'assets/animations/loading-animation-2.json',
    'assets/animations/loading-animation-3.json',
    'assets/animations/loading-animation-4.json',
  ];

  late String selectedAnimation;

  @override
  void initState() {
    super.initState();
    final random = Random();
    selectedAnimation =
        loadingAnimations[random.nextInt(loadingAnimations.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LottieBuilder.asset(selectedAnimation),
      ),
    );
  }
}
