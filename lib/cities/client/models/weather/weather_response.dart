import 'package:city_weather_app/cities/client/models/weather/weather_title_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  @JsonKey(name: 'main')
  final WeatherTitleResponse? weather;

  WeatherResponse(this.weather);

  factory WeatherResponse.fromJson(Map<String, Object?> json) => _$WeatherResponseFromJson(json);
}