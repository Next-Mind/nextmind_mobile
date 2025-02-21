import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/base_screen/view_models/base_viewmodel.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/core/bottom_navigation_bar.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/navs/home_nav.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = BaseViewModel.to;
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: viewModel.currentIndex.value,
          children: [HomeNav()],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
