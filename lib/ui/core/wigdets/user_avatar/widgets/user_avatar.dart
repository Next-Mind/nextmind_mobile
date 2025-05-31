import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/core/wigdets/user_avatar/view_model/user_avatar_viewmodel.dart';

class UserAvatar extends StatelessWidget {
  final double profileSize;
  const UserAvatar({super.key, required this.profileSize});

  @override
  Widget build(BuildContext context) {
    final viewModel = UserAvatarViewmodel.to;
    return ListenableBuilder(
      listenable: viewModel.fetchUserCommand,
      builder: (context, child) {
        return viewModel.fetchUserCommand.isRunning
            ? FadeShimmer.round(
                size: profileSize * 2,
                fadeTheme: FadeTheme.dark,
              )
            : CircleAvatar(
                radius: profileSize,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Image.network(
                  viewModel.userImageUrl,
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.person_off_outlined),
                ),
              );
      },
    );
  }
}
