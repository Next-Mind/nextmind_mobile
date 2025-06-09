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
        selectedIndex: viewModel.tabIndex.value,
        onDestinationSelected: viewModel.changeTab,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.surface,
            ),
            label: "NavHome".tr,
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_today_outlined),
            selectedIcon: Icon(
              Icons.calendar_today,
              color: Theme.of(context).colorScheme.surface,
            ),
            label: "NavAppointments".tr,
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_outlined),
            selectedIcon: Icon(
              Icons.chat,
              color: Theme.of(context).colorScheme.surface,
            ),
            label: "NavChat".tr,
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.surface,
            ),
            label: "NavSettings".tr,
          ),
        ],
      ),
    );
  }
}
