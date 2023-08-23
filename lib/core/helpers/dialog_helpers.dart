import 'package:flutter/material.dart';

enum SnackbarType { error, success, info, warning }

extension SnackbarExtension on BuildContext {
  void showSnackBar(
    String message, {
    SnackbarType type = SnackbarType.info,
    Duration duration = const Duration(seconds: 3),
  }) {
    final colorScheme = Theme.of(this).colorScheme;
    final result = switch (type) {
      SnackbarType.error => colorScheme.error,
      SnackbarType.success => colorScheme.primary,
      SnackbarType.info => colorScheme.secondary,
      SnackbarType.warning => colorScheme.tertiary,
    };
    final snackBar = SnackBar(
      content: Text(message),
      duration: duration,
      backgroundColor: result,
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
