import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleBottomNavBar extends StatelessWidget {
  final StatefulNavigationShell currentChild;
  const GoogleBottomNavBar({super.key, required this.currentChild});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return GNav(
      activeColor: colors.primary,
      selectedIndex: currentChild.currentIndex,
      onTabChange: (value) => currentChild.goBranch(value),
      tabs: const [
      GButton(
       icon: Icons.home_filled,
       text: '   Home'),
      GButton(
       icon: Icons.grass_sharp,
       text: '   Agregar planta'),
      GButton(
       icon: Icons.settings,
       text: '  Configuración'),
    ]);
  }
}