import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter/core/core.dart';
import 'package:flutter_starter/features/auth/presentation/providers/auth_providers.dart';
import 'package:flutter_starter/features/shared/domain/services/key_value_storage_service.dart';

class HomeScreen extends ConsumerWidget {
  final keyServices = getIt.get<KeyValueStorageService>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(authProvider.notifier).getUserData();

    final authState = ref.watch(authProvider);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(authState.user?.firstName ?? 'No User'),
            // filled button with logout function
            FilledButton(
              onPressed: () {
                ref.read(authProvider.notifier).logout();
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
