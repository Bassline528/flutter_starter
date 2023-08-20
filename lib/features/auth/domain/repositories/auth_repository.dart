import 'package:dartz/dartz.dart';
import 'package:flutter_starter/core/exceptions/auth_exception.dart';
import 'package:flutter_starter/features/auth/data/dtos/dtos.dart';
import 'package:flutter_starter/features/auth/data/mappers/login_response.dart';
import 'package:flutter_starter/features/auth/domain/entities/entities.dart';

abstract class AuthRepository {
  Future<Either<AuthException, Unit>> register(
    RegisterDto registerDto,
  );
  Future<Either<AuthException, LoginResponse>> login(
    String email,
    String pass,
  );
  Future<Either<AuthException, Unit>> logout(
    String idToken,
  );
  Future<Either<AuthException, Token>> refreshToken(
    String refreshToken,
  );
  Future<Either<AuthException, UserResponse>> me(
    String idToken,
  );
}
