import 'package:flutter_starter/features/auth/presentation/providers/auth_providers.dart';
import 'package:flutter_starter/features/auth/presentation/providers/providers.dart';
import 'package:flutter_starter/features/auth/presentation/screens/screens.dart';
import 'package:flutter_starter/features/home/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  final auth = ref.watch(authProvider);
  return GoRouter(
    initialLocation: '/spash',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => RegisterScreen(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) => CheckAuthStatusScreenScreen(),
      ),
    ],
    redirect: (context, GoRouterState state) {
      final isGoingTo = state.path;
      final authStatus = auth.status;

      if (isGoingTo == '/splash' && authStatus == AuthStatus.checking) {
        return null;
      }

      if (authStatus == AuthStatus.notAuthenticated) {
        if (isGoingTo == '/login' || isGoingTo == '/register') return null;
        return '/login';
      }

      if (authStatus == AuthStatus.authenticated) {
        if (isGoingTo == '/login' ||
            isGoingTo == '/register' ||
            isGoingTo == '/splash') {
          return '/';
        }
      }

      return null;
    },
  );
}
