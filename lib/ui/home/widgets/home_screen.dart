import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          Obx(() => CircleAvatar(
                backgroundImage: NetworkImage(viewModel.user.value.photoURL!),
              )),
          ElevatedButton(onPressed: viewModel.logout, child: Text('Logout')),
        ],
      )),
    );
  }
}
