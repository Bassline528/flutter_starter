import 'package:flutter_starter/core/constants/key_value_storage_constants.dart';
import 'package:flutter_starter/core/core.dart';
import 'package:flutter_starter/features/auth/data/dtos/dtos.dart';
import 'package:flutter_starter/features/auth/data/mappers/login_response.dart';
import 'package:flutter_starter/features/auth/domain/entities/user.dart';
import 'package:flutter_starter/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_starter/features/shared/domain/services/key_value_storage_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.freezed.dart';
part 'auth_providers.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  AuthState build() {
    return AuthState(status: AuthStatus.checking);
  }

  final AuthRepository _authRepository = getIt.get<AuthRepository>();
  final KeyValueStorageService _keyValueStorageService =
      getIt.get<KeyValueStorageService>();

  Future<void> loginUser(String username, String password) async {
    state = state.copyWith(status: AuthStatus.checking, errorMessage: '');
    final user = await _authRepository.login(username, password);
    await Future<void>.delayed(const Duration(seconds: 1));
    user.fold(
      (l) {
        state = state.copyWith(
          status: AuthStatus.notAuthenticated,
          errorMessage: l.description,
        );
      },
      (r) {
        _setTokens(r.tokens);
        _setLoggetInfo(
          User.fromJson(
            r.user.toJson(),
          ),
        );
      },
    );
  }

  Future<void> registerUser(RegisterDto registerData) async {
    state = state.copyWith(status: AuthStatus.checking, errorMessage: '');
    final user = await _authRepository.register(registerData);
    user.fold(
      (l) {
        state = state.copyWith(
          status: AuthStatus.notAuthenticated,
          errorMessage: l.description,
        );
      },
      (r) {
        _setTokens(r.tokens);
        _setLoggetInfo(
          User.fromJson(
            r.user.toJson(),
          ),
        );
      },
    );
  }

  Future<void> logout([String? errorMessage]) async {
    await _deleteTokens();

    _setLoggetInfo(
      null,
      status: AuthStatus.notAuthenticated,
    );
  }

  Future<void> getUserData() async {
    if (state.user != null) return;
    final accessToken =
        await _keyValueStorageService.getValue<String>(accessTokenKey);
    final user = await _authRepository.me(accessToken ?? '');
    await user.fold(
      (l) => logout(l.description),
      (r) {
        _setLoggetInfo(
          User.fromJson(
            r.toJson(),
          ),
        );
      },
    );
  }

  Future<void> refreshToken() async {
    final refreshToken =
        await _keyValueStorageService.getValue<String>(refreshTokenKey);
    final user = await _authRepository.refreshToken(refreshToken ?? '');
    await user.fold(
      (l) => logout(l.description),
      _setTokens,
    );
  }

  Future<void> _deleteTokens() async {
    await Future.wait([
      _keyValueStorageService.removeKey(accessTokenKey),
      _keyValueStorageService.removeKey(refreshTokenKey),
    ]);
  }

  Future<void> _setTokens(Tokens tokens) async {
    await Future.wait([
      _keyValueStorageService.setKeyValue(accessTokenKey, tokens.accessToken),
      _keyValueStorageService.setKeyValue(refreshTokenKey, tokens.refreshToken),
    ]);
  }

  void _setLoggetInfo(
    User? user, {
    AuthStatus status = AuthStatus.authenticated,
  }) async {
    state = state.copyWith(
      user: user,
      status: status,
    );
    final router = ref.read(appRouterProvider);
    if (status == AuthStatus.authenticated) {
      router.go('/');
    }
    if (status == AuthStatus.notAuthenticated) {
      router.go('/login');
    }
  }
}

enum AuthStatus { checking, authenticated, notAuthenticated }

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required AuthStatus status,
    User? user,
    @Default('') String errorMessage,
  }) = _AuthState;
}
