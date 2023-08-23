import 'package:dio/dio.dart';
import 'package:flutter_starter/core/services/get_it.dart';
import 'package:flutter_starter/features/auth/data/datasources/auth_data_source.dart';
import 'package:flutter_starter/features/auth/data/mappers/login_response.dart';
import 'package:flutter_starter/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:flutter_starter/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_starter/features/auth/domain/repositories/auth_repository.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';

final baseUrl = 'http://localhost:3000/api/v1';

@Injectable()
class DioClient {
  DioClient() {
    _dio.options = BaseOptions(
      baseUrl: baseUrl, // the place for your base url
      receiveTimeout: const Duration(milliseconds: 10000),
      connectTimeout: const Duration(milliseconds: 10000),
      sendTimeout: const Duration(milliseconds: 10000),
    );
    _dio.interceptors.add(freshDioInterceptor);
  }
  late final Dio _dio = Dio();

  Dio get dio => _dio;
}

final freshDioInterceptor = Fresh.oAuth2(
  tokenStorage: InMemoryTokenStorage<OAuth2Token>(),
  tokenHeader: (token) => {'Authorization': 'Bearer ${token.accessToken}'},
  shouldRefresh: (response) => response?.statusCode == 401,
  refreshToken: (token, client) async {
    client.options.baseUrl = baseUrl;
    client.options.headers = {
      'Authorization': 'Bearer ${token?.refreshToken}',
    };

    try {
      final resp = await client.get<Map<String, dynamic>>('/auth/refresh');

      final tokens = Tokens.fromJson(resp.data!);
      return OAuth2Token(
        accessToken: tokens.accessToken,
        refreshToken: tokens.refreshToken,
      );
    } catch (e) {
      throw RevokeTokenException();
    }
  },
);
