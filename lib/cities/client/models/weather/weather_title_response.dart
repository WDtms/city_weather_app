import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_title_response.g.dart';

@JsonSerializable()
class WeatherTitleResponse {
  @JsonKey(name: 'temp')
  final double? temperature;

  WeatherTitleResponse(this.temperature);

  factory WeatherTitleResponse.fromJson(Map<String, Object?> json) => _$WeatherTitleResponseFromJson(json);
}
