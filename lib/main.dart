import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plantify/Config/Router/app_router.dart';
import 'package:plantify/Config/Theme/app_theme.dart';
import 'package:plantify/presentation/providers/providers.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);
    final selectedColor = ref.watch(selectedColorProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme(isDarkMode: isDarkMode, selectedColor: selectedColor).getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
