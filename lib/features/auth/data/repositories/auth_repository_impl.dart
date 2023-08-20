import 'package:dartz/dartz.dart';
import 'package:flutter_starter/core/exceptions/auth_exception.dart';
import 'package:flutter_starter/features/auth/data/datasources/auth_data_source.dart';
import 'package:flutter_starter/features/auth/data/dtos/register_dto.dart';
import 'package:flutter_starter/features/auth/data/mappers/login_response.dart';
import 'package:flutter_starter/features/auth/domain/entities/token.dart';
import 'package:flutter_starter/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._authDataSource);

  final AuthDataSource _authDataSource;

  @override
  Future<Either<AuthException, LoginResponse>> login(
    String email,
    String pass,
  ) {
    return _authDataSource.login(email, pass);
  }

  @override
  Future<Either<AuthException, Unit>> logout(String idToken) {
    return _authDataSource.logout(idToken);
  }

  @override
  Future<Either<AuthException, UserResponse>> me(String idToken) {
    return _authDataSource.me(idToken);
  }

  @override
  Future<Either<AuthException, Token>> refreshToken(String refreshToken) {
    return _authDataSource.refreshToken(refreshToken);
  }

  @override
  Future<Either<AuthException, Unit>> register(RegisterDto registerDto) {
    return _authDataSource.register(registerDto);
  }
}
