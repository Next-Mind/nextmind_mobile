import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/drawer_menu/widgets/buttons_drawer.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/drawer_menu/widgets/user_accounts_drawer_header.dart'
    as custom;

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.defaultPaddingHorizontal,
          vertical: Dimens.defaultPaddingVertical,
        ),
        child: Column(children: [
          custom.UserAccountsDrawerHeader(),
          SizedBox(
            height: Dimens.extraLargePadding,
          ),
          ButtonsDrawer()
        ]),
      ),
    ));
  }
}
