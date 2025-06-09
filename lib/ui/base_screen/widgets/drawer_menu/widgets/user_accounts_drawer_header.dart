import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:nextmind_mobile/ui/base_screen/widgets/drawer_menu/view_models/user_accounts_drawer_header_viewmodel.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/core/wigdets/user_avatar/widgets/user_avatar.dart';

class UserAccountsDrawerHeader extends StatelessWidget {
  const UserAccountsDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = UserAccountsDrawerHeaderViewmodel.to;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: UserAvatar(
            profileSize: Dimens.of(context).profilePictureSize * 0.4,
          ),
        ),
        Obx(
          () => Expanded(
            flex: 4,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    viewModel.userName.value,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                  const SizedBox(height: Dimens.defaultPaddingVertical * 0.2),
                  Text(viewModel.userEmail.value,
                      overflow: TextOverflow.ellipsis)
                ]),
          ),
        )
      ],
    );
  }
}
