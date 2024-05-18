// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CitiesRequest _$CitiesRequestFromJson(Map<String, dynamic> json) =>
    CitiesRequest(
      startsWith: json['keyword'] as String,
      expectedMaxCount: json['max'] as int,
      countryCode: json['countryCode'] as String,
    );

Map<String, dynamic> _$CitiesRequestToJson(CitiesRequest instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'max': instance.expectedMaxCount,
      'keyword': instance.startsWith,
    };
