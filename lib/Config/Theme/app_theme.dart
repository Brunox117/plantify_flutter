import 'package:flutter/material.dart';

class AppTheme{
  ThemeData getTheme() => ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorSchemeSeed: Colors.green,
  );
}