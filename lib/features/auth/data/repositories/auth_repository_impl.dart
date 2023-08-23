import 'package:dartz/dartz.dart';
import 'package:flutter_starter/core/exceptions/auth_exception.dart';
import 'package:flutter_starter/features/auth/data/datasources/auth_data_source.dart';
import 'package:flutter_starter/features/auth/data/dtos/register_dto.dart';
import 'package:flutter_starter/features/auth/data/mappers/login_response.dart';
import 'package:flutter_starter/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._authDataSource);

  final AuthDataSource _authDataSource;

  @override
  Future<Either<AuthException, LoginResponse>> login(
    String username,
    String pass,
  ) {
    return _authDataSource.login(username, pass);
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
  Future<Either<AuthException, Tokens>> refreshToken(String refreshToken) {
    return _authDataSource.refreshToken(refreshToken);
  }

  @override
  Future<Either<AuthException, LoginResponse>> register(
    RegisterDto registerDto,
  ) {
    return _authDataSource.register(registerDto);
  }
}
