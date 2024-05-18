// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_title_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherTitleResponse _$WeatherTitleResponseFromJson(
        Map<String, dynamic> json) =>
    WeatherTitleResponse(
      (json['temp'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherTitleResponseToJson(
        WeatherTitleResponse instance) =>
    <String, dynamic>{
      'temp': instance.temperature,
    };
