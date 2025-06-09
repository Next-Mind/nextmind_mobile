import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/drawer_menu/view_models/buttons_drawer_viewmodel.dart';
import 'package:nextmind_mobile/utils/helpers/icon_map.dart';

class ButtonsDrawer extends StatelessWidget {
  const ButtonsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = ButtonsDrawerViewmodel.to;
    return ListenableBuilder(
        listenable: viewModel.initializeButtonsCommand,
        builder: (context, _) {
          return viewModel.initializeButtonsCommand.isRunning
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: viewModel.buttons.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                          IconMap.iconMap[viewModel.buttons[index].iconPath] ??
                              Icons.help_outline),
                      title: Text(viewModel.buttons[index].title.toString().tr),
                      onTap: () {
                        if (viewModel.buttons[index].routeName != null) {
                          Get.toNamed(viewModel.buttons[index].routeName!);
                        } else if (viewModel.buttons[index].onPressed != null) {
                          viewModel.buttons[index].onPressed!();
                        }
                      },
                    );
                  },
                );
        });
  }
}
