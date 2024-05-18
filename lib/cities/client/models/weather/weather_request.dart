import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_request.g.dart';

@JsonSerializable()
class WeatherRequest {
  @JsonKey(name: 'lat')
  final String latitude;

  @JsonKey(name: 'lon')
  final String longitude;

  @JsonKey(name: 'appid')
  final String apiKey;

  WeatherRequest({required this.latitude, required this.longitude, required this.apiKey});

  Map<String, dynamic> toJson() =>
      _$WeatherRequestToJson(this);
}