import 'package:flutter/material.dart';
import 'package:flutter_starter/core/theme/color_schemes.g.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class AppTheme {
  ThemeData get lighThemeData => _lighThemeData;
  ThemeData get darkThemeData => _darkThemeData;

  final ThemeData _darkThemeData = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: darkColorScheme.onBackground,
    ),
  );

  final ThemeData _lighThemeData = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: lightColorScheme.onBackground,
    ),
  );
}
