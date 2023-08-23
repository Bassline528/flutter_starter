import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  // obtain textTheme from current theme
  TextTheme get textTheme => Theme.of(this).textTheme;

  // obtain colorScheme from current theme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
