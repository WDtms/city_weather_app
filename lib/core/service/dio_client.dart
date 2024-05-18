import 'package:dio/dio.dart';

class DioClient {
  Dio? _dio;

  Dio get instance => _dio ??= Dio();
}
