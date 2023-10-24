import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final StatefulNavigationShell currentChild;
  const CustomBottomNavigationBar({super.key, required this.currentChild});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      enableFeedback: true,
      currentIndex: currentChild.currentIndex,
      onTap: (value) => currentChild.goBranch(value),
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.grass_sharp), label: 'Agregar planta'),
      BottomNavigationBarItem(icon: Icon(Icons.settings,), label: 'Config'),
    ]);
  }
}
