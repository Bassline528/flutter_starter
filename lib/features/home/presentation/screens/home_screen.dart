import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter/core/core.dart';
import 'package:flutter_starter/features/auth/presentation/providers/auth_providers.dart';
import 'package:flutter_starter/features/home/presentation/providers/navigation_bar_provider.dart';
import 'package:flutter_starter/features/home/presentation/screens/screen1.dart';
import 'package:flutter_starter/features/home/presentation/screens/screen2.dart';
import 'package:flutter_starter/features/shared/domain/services/key_value_storage_service.dart';

class HomeScreen extends ConsumerWidget {
  final keyServices = getIt.get<KeyValueStorageService>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(authProvider.notifier).getUserData();

    final List<Widget> screens = [Screen1Screen(), Screen2Screen()];

    final navigation = ref.watch(navigationProvider);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigation,
        onDestinationSelected:
            ref.read(navigationProvider.notifier).changeIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: screens[navigation],
    );
  }
}
