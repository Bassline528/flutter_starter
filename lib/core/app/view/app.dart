import 'package:flutter/material.dart';
import 'package:flutter_starter/core/core.dart';
import 'package:flutter_starter/core/routes/app_router.dart';
import 'package:flutter_starter/core/theme/color_schemes.g.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: _App(),
    );
  }
}

class _App extends ConsumerWidget {
  _App();

  final appTheme = getIt.get<AppTheme>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    return MaterialApp.router(
      theme: appTheme.lighThemeData,
      darkTheme: appTheme.darkThemeData,
      routerConfig: appRouter,
    );
  }
}
