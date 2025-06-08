import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/core/wigdets/user_avatar/widgets/user_avatar.dart';

class UserAccountsDrawerHeader extends StatelessWidget {
  const UserAccountsDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        UserAvatar(
          profileSize: Dimens.of(context).profilePictureSize * 0.3,
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: Dimens.defaultPaddingVertical * 0.5),
              Text(
                'NextMind',
              ),
              const SizedBox(height: Dimens.defaultPaddingVertical * 0.2),
              Text('nextmind@google.com.br')
            ])
      ],
    );
  }
}
