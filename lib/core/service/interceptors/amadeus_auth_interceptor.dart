import 'package:city_weather_app/core/constants/environment_constants.dart';
import 'package:city_weather_app/core/storage/token_secure_storage.dart';
import 'package:dio/dio.dart';

class AmadeusAuthInterceptor extends QueuedInterceptorsWrapper {
  final TokenSecureStorage _tokenSecureStorage;

  AmadeusAuthInterceptor({required TokenSecureStorage tokenSecureStorage})
      : _tokenSecureStorage = tokenSecureStorage;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await _getAccessToken();
    if (accessToken == null) {
      return handler.reject(DioException(requestOptions: options));
    }

    options.headers['Authorization'] = 'Bearer $accessToken';
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (!(err.response?.statusCode == 401)) {
      super.onError(err, handler);
    }

    await _tokenSecureStorage.clearAccessToken();

    final newToken = await _getAccessToken();
    if (newToken == null) {
      return handler.reject(err);
    }

    err.requestOptions.headers['Authorization'] = 'Bearer $newToken';
    final opts = Options(
      method: err.requestOptions.method,
      headers: err.requestOptions.headers,
    );
    final cloneReq = await Dio().request(
      err.requestOptions.path,
      options: opts,
      data: err.requestOptions.data,
      queryParameters: err.requestOptions.queryParameters,
    );
    return handler.resolve(cloneReq);
  }

  Future<String?> _getAccessToken() async {
    final savedAccessToken = await _tokenSecureStorage.getAccessToken();
    if (savedAccessToken != null) {
      return savedAccessToken;
    }

    final Dio dio = Dio();
    final response = await dio.post(
      'https://test.api.amadeus.com/v1/security/oauth2/token',
      data: {
        'grant_type': 'client_credentials',
        'client_id': EnvironmentConstants.amadeusApiKey,
        'client_secret': EnvironmentConstants.amadeusApiSecret,
      },
      options: Options(
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      ),
    );

    if (response.statusCode == 200) {
      final accessToken = response.data['access_token'];
      if (accessToken == null) {
        return null;
      }

      _tokenSecureStorage.setAccessToken(accessToken);
      return accessToken;
    } else {
      return null;
    }
  }
}
