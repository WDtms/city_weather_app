import 'package:city_weather_app/cities/client/models/weather/weather_request.dart';
import 'package:city_weather_app/cities/client/models/weather/weather_response.dart';
import 'package:city_weather_app/cities/client/weather_api_client.dart';
import 'package:city_weather_app/core/models/result.dart';
import 'package:dio/dio.dart';

class WeatherRepository {
  final WeatherApiClient _weatherApiClient;

  WeatherRepository({required WeatherApiClient weatherApiClient}) : _weatherApiClient = weatherApiClient;

  Future<Result<WeatherResponse, void>> getCityWeather({required WeatherRequest weatherRequest}) async {
    try {
      return Result.success(await _weatherApiClient.getWeather(weatherRequest));
    } on DioException catch (_) {
      // logg error
      return const Result.error(null);
    }
  }
}