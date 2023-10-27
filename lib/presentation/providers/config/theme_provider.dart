
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toogleDarkMode(){
    state = !state;
  }
}

@riverpod
class SelectedColor extends _$SelectedColor {
  @override
   Color build() => Color(Colors.green.value);
   
   void changeSelectedColor(Color color){
     final Color selectedColor = color;
     state = selectedColor;
   }
}