// ignore_for_file: prefer_final_fields, unused_field, use_super_parameters

import 'package:flutter/material.dart';
import 'package:nextmind_mobile/utils/colors/menu_app_colors.dart';

class CustomMenu extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<BottomNavigationBarItem> items;
  final Color backgroundColor;
  final Color iconColor;
  final Color iconSelectedColor;
  final Color textColor;
  final Color textSelectedColor;

  static const List<BottomNavigationBarItem> _defaultItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Início',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.calendar_today),
      label: 'Consultas',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: 'Chat',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Config.',
    ),
  ];

  const CustomMenu({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    this.items = _defaultItems,
    this.backgroundColor = MenuAppColors.backgroundColors, 
    this.iconColor = MenuAppColors.iconColors, 
    this.iconSelectedColor = MenuAppColors.iconSelectedColors,
    this.textColor = MenuAppColors.textColor,
    this.textSelectedColor = MenuAppColors.textSelectedColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,

      selectedIconTheme: IconThemeData(color: iconSelectedColor),
      unselectedIconTheme: IconThemeData(color: iconColor),

      selectedItemColor: textSelectedColor,
      unselectedItemColor: textColor,
      showUnselectedLabels: true,

      items: items,
    );
  }
}