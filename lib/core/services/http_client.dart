import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class DioClient {
  DioClient() {
    _dio.options = BaseOptions(
      baseUrl: 'http://localhost:3000/api/v1', // the place for your base url
      receiveTimeout: const Duration(milliseconds: 10000),
      connectTimeout: const Duration(milliseconds: 10000),
      sendTimeout: const Duration(milliseconds: 10000),
    );
  }
  late final Dio _dio = Dio();

  Dio get dio => _dio;
}
