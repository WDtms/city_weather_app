import 'package:dio/dio.dart';

class DioClient {
  Dio? _dio;

  Dio getInstance() => _dio ??= Dio();
}
