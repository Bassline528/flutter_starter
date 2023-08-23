import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_starter/core/constants/api_constants.dart';
import 'package:flutter_starter/core/exceptions/auth_exception.dart';
import 'package:flutter_starter/core/services/services.dart';
import 'package:flutter_starter/features/auth/data/dtos/dtos.dart';
import 'package:flutter_starter/features/auth/data/mappers/login_response.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

abstract class AuthDataSource {
  Future<Either<AuthException, LoginResponse>> register(
    RegisterDto registerDto,
  );
  Future<Either<AuthException, LoginResponse>> login(
    String username,
    String pass,
  );
  Future<Either<AuthException, Unit>> logout(
    String idToken,
  );
  Future<Either<AuthException, Tokens>> refreshToken(
    String refreshToken,
  );
  Future<Either<AuthException, UserResponse>> me(
    String idToken,
  );
}

@Injectable(as: AuthDataSource)
class AuthService implements AuthDataSource {
  AuthService(
    this.dioClient,
  );

  final DioClient dioClient;

  @override
  Future<Either<AuthException, LoginResponse>> register(
    RegisterDto registerDto,
  ) async {
    try {
      final data = await dioClient.dio.post<Map<String, dynamic>>(
        registerEndpoint,
        data: registerDto.toJson(),
      );
      return switch (data.statusCode) {
        204 => Right(LoginResponse.fromJson(data.data!)),
        422 => const Left(AuthException.emailAlreadyExists()),
        _ => const Left(AuthException.unknown()),
      };
    } on DioException catch (_) {
      return const Left(AuthException.serverError());
    }
  }

  @override
  Future<Either<AuthException, LoginResponse>> login(
    String username,
    String pass,
  ) async {
    try {
      final data = await dioClient.dio.post<Map<String, dynamic>>(
        loginEndpoint,
        data: {
          'username': username,
          'password': pass,
        },
      );
      return switch (data.statusCode) {
        200 => Right(LoginResponse.fromJson(data.data!)),
        422 => const Left(AuthException.wrongEmailOrPass()),
        _ => const Left(AuthException.unknown()),
      };
    } on DioException catch (error) {
      return switch (error.response?.statusCode) {
        401 => const Left(AuthException.wrongEmailOrPass()),
        _ => const Left(AuthException.unknown()),
      };
    }
  }

  @override
  Future<Either<AuthException, Unit>> logout(
    String idToken,
  ) async {
    try {
      final data = await dioClient.dio.post<void>(
        logoutEndpoint,
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
  Future<Either<AuthException, Tokens>> refreshToken(
      String refreshToken) async {
    try {
      final data = await dioClient.dio.post<Map<String, dynamic>>(
        refreshEndpoint,
        options: Options(
          headers: {
            'Authorization': 'Bearer $refreshToken',
          },
        ),
      );
      return switch (data.statusCode) {
        200 => Right(Tokens.fromJson(data.data!)),
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
      final data = await dioClient.dio.get<Map<String, dynamic>>(
        meEndpoint,
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
