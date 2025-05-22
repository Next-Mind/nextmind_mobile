import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  Future<void> Function()? onPopCallback;

  @override
  void initState() {
    super.initState();
    final random = Random();
    selectedAnimation =
        loadingAnimations[random.nextInt(loadingAnimations.length)];

    // Pega o argumento passado pela rota
    final arg = Get.arguments;
    if (arg is Future<void> Function()) {
      onPopCallback = arg;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) async {
        if (!didPop) return;

        if (onPopCallback != null) {
          await onPopCallback!();
        }
      },
      child: Scaffold(
        body: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: LottieBuilder.asset(selectedAnimation),
          ),
        ),
      ),
    );
  }
}
