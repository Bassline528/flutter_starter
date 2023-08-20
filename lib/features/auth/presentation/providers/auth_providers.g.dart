// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authStatusHash() => r'a97fb1bfae7ef0d717bc2f8e5ce04ad1277d6d61';

/// See also [authStatus].
@ProviderFor(authStatus)
final authStatusProvider =
    AutoDisposeProvider<ValueNotifier<AuthStatus>>.internal(
  authStatus,
  name: r'authStatusProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthStatusRef = AutoDisposeProviderRef<ValueNotifier<AuthStatus>>;
String _$authHash() => r'4b2d2d5709d10bc88a83e34eb6051c8bd16976d5';

/// See also [Auth].
@ProviderFor(Auth)
final authProvider = AutoDisposeNotifierProvider<Auth, AuthState>.internal(
  Auth.new,
  name: r'authProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Auth = AutoDisposeNotifier<AuthState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
