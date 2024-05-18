// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_geo_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityGeoDataResponse _$CityGeoDataResponseFromJson(Map<String, dynamic> json) =>
    CityGeoDataResponse(
      (json['longitude'] as num?)?.toDouble(),
      (json['latitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CityGeoDataResponseToJson(
        CityGeoDataResponse instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
