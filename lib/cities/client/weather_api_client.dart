import 'package:city_weather_app/cities/client/models/weather/weather_request.dart';
import 'package:city_weather_app/cities/client/models/weather/weather_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'weather_api_client.g.dart';

@RestApi(baseUrl: 'https://api.openweathermap.org/data/2.5')
abstract class WeatherApiClient {
  factory WeatherApiClient(Dio dio) = _WeatherApiClient;

  @GET('/weather')
  Future<WeatherResponse> getWeather(@Queries() WeatherRequest weatherRequest);
}