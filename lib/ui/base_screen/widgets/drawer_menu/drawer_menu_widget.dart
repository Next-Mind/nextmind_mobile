import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/drawer_menu/widgets/user_accounts_drawer_header.dart'
    as custom;

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
      padding: const EdgeInsets.all(Dimens.defaultPaddingVertical * 1.5),
      child: Column(children: [custom.UserAccountsDrawerHeader()]),
    ));
  }
}
