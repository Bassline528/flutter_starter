import 'package:flutter/material.dart';
import 'package:flutter_starter/core/core.dart';
import 'package:flutter_starter/features/auth/domain/entities/user.dart';
import 'package:flutter_starter/features/auth/domain/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.freezed.dart';
part 'auth_providers.g.dart';

enum AuthStatus { checking, authenticated, notAuthenticated }

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required AuthStatus status,
    User? user,
    @Default('') String errorMessage,
  }) = _AuthState;
}

@Riverpod()
class Auth extends _$Auth {
  final AuthRepository _authRepository = getIt.get<AuthRepository>();
  @override
  AuthState build() {
    return AuthState(status: AuthStatus.notAuthenticated);
  }

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    final result = await _authRepository.login(
      email,
      password,
    );
    result.fold(
      (error) => state = AuthState(
        status: AuthStatus.notAuthenticated,
        errorMessage: error.description,
      ),
      (data) => state = AuthState(
        status: AuthStatus.authenticated,
        user: User.fromJson(data.user.toJson()),
      ),
    );
  }

  Future<void> logOut() async {
    await _authRepository.logout('JWT_KEY');
    state = AuthState(status: AuthStatus.notAuthenticated);
  }
}

@riverpod
ValueNotifier<AuthStatus> authStatus(AuthStatusRef ref) {
  final auth = ref.watch(authProvider);
  final authStatusNotifier = ValueNotifier(auth.status);
  return authStatusNotifier;
}
