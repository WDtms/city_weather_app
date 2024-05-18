import 'package:city_weather_app/core/service/interceptors/amadeus_auth_interceptor.dart';
import 'package:city_weather_app/core/storage/token_secure_storage.dart';
import 'package:dio/dio.dart';

class AmadeusDioClient {
  final TokenSecureStorage _tokenSecureStorage;

  AmadeusDioClient({required TokenSecureStorage tokenSecureStorage}) : _tokenSecureStorage = tokenSecureStorage;

  Dio? _dio;

  Dio get instance {
    if (_dio != null) {
      return _dio!;
    }

    final dio = Dio();
    dio.interceptors.add(AmadeusAuthInterceptor(tokenSecureStorage: _tokenSecureStorage));
    dio.options.baseUrl = 'https://test.api.amadeus.com/v1';

    return _dio ??= dio;
  }
}