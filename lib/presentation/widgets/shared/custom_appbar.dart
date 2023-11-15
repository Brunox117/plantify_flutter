import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textStyles = Theme.of(context).textTheme;
    return SafeArea(
      child: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        )),
        backgroundColor: colors.primary.withOpacity(0.4),
        title: Center(
          child: Text(
            title,
            style: textStyles.headlineMedium,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(55.0);
  }
}
