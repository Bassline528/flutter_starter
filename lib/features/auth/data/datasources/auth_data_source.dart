import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_starter/core/exceptions/auth_exception.dart';
import 'package:flutter_starter/core/services/services.dart';
import 'package:flutter_starter/features/auth/data/dtos/dtos.dart';
import 'package:flutter_starter/features/auth/data/mappers/login_response.dart';
import 'package:flutter_starter/features/auth/domain/entities/entities.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

abstract class AuthDataSource {
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

@LazySingleton(as: AuthDataSource)
class AuthService implements AuthDataSource {
  AuthService();

  final dioClient = getIt.get<DioClient>();

  @override
  Future<Either<AuthException, Unit>> register(
    RegisterDto registerDto,
  ) async {
    try {
      final data = await dioClient.dio.post<void>(
        '/auth/email/register',
        data: registerDto.toJson(),
      );
      return switch (data.statusCode) {
        204 => const Right(unit),
        422 => const Left(AuthException.emailAlreadyExists()),
        _ => const Left(AuthException.unknown()),
      };
    } on DioException catch (_) {
      return const Left(AuthException.serverError());
    }
  }

  @override
  Future<Either<AuthException, LoginResponse>> login(
    String email,
    String pass,
  ) async {
    try {
      final data = await dioClient.dio.post<Map<String, dynamic>>(
        '/auth/email/register',
        data: {
          'email': email,
          'password': pass,
        },
      );
      return switch (data.statusCode) {
        204 => Right(LoginResponse.fromJson(data.data!)),
        422 => const Left(AuthException.wrongEmailOrPass()),
        _ => const Left(AuthException.unknown()),
      };
    } on DioException catch (_) {
      return const Left(AuthException.serverError());
    }
  }

  @override
  Future<Either<AuthException, Unit>> logout(
    String idToken,
  ) async {
    try {
      final data = await dioClient.dio.post<void>(
        '/auth/logout',
        options: Options(
          headers: {
            'Authorization': 'Bearer $idToken',
          },
        ),
      );
      return switch (data.statusCode) {
        204 => right(unit),
        _ => const Left(AuthException.unknown()),
      };
    } on DioException catch (_) {
      return const Left(AuthException.serverError());
    }
  }

  @override
  Future<Either<AuthException, Token>> refreshToken(String refreshToken) async {
    try {
      final data = await dioClient.dio.post<Map<String, dynamic>>(
        '/auth/refresh',
        options: Options(
          headers: {
            'Authorization': 'Bearer $refreshToken',
          },
        ),
      );
      return switch (data.statusCode) {
        200 => Right(Token.fromJson(data.data!)),
        401 => const Left(AuthException.unauthorized()),
        _ => const Left(AuthException.unknown()),
      };
    } on DioException catch (_) {
      return const Left(AuthException.serverError());
    }
  }

  @override
  Future<Either<AuthException, UserResponse>> me(String idToken) async {
    try {
      final data = await dioClient.dio.post<Map<String, dynamic>>(
        '/auth/me',
        options: Options(
          headers: {
            'Authorization': 'Bearer $idToken',
          },
        ),
      );
      return switch (data.statusCode) {
        200 => Right(UserResponse.fromJson(data.data!)),
        401 => const Left(AuthException.unauthorized()),
        _ => const Left(AuthException.unknown()),
      };
    } on DioException catch (_) {
      return const Left(AuthException.serverError());
    }
  }
}
