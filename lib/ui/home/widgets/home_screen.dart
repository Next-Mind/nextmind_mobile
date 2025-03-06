import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/home/view_models/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = HomeViewModel.to;
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: viewModel.logout, child: Text('Logout')),
        ],
      )),
    );
  }
}
