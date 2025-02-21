import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/base_screen/view_models/base_viewmodel.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = BaseViewModel.to;
    return Obx(
      () => NavigationBar(
        indicatorColor: Theme.of(context).colorScheme.primary,
        elevation: 10,
        selectedIndex: viewModel.currentIndex.value,
        onDestinationSelected: viewModel.changeIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.surface,
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.surface,
            ),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
