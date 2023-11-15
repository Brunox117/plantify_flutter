import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plantify/presentation/widgets/shared/google_bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  final StatefulNavigationShell currentChild;

  const HomeScreen({super.key, required this.currentChild});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentChild,
      bottomNavigationBar: GoogleBottomNavBar(currentChild: currentChild,),
    );
  }
}
