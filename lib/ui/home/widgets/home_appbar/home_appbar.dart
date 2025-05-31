import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nextmind_mobile/ui/core/wigdets/user_avatar/widgets/user_avatar.dart';

class HomeAppBar extends StatelessWidget {
  final VoidCallback onMenuTap;

  const HomeAppBar({super.key, required this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    final formattedDate =
        DateFormat("d 'de' MMMM", 'pt_BR').format(DateTime.now());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onMenuTap,
            child: Icon(Icons.menu, color: Colors.white),
          ),
          Text(
            formattedDate,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          UserAvatar(profileSize: 16)
        ],
      ),
    );
  }
}
