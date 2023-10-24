import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plantify/presentation/screens/widgets/shared/custom_bottom_navigationbar.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  final StatefulNavigationShell currentChild;

  const HomeScreen({super.key, required this.currentChild});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentChild,
      bottomNavigationBar: CustomBottomNavigationBar(currentChild: currentChild,),
    );
  }
}
