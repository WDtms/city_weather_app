// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityItemResponse _$CityItemResponseFromJson(Map<String, dynamic> json) =>
    CityItemResponse(
      json['geoCode'] == null
          ? null
          : CityGeoDataResponse.fromJson(
              json['geoCode'] as Map<String, dynamic>),
      json['name'] as String?,
      json['subType'] as String?,
    );

Map<String, dynamic> _$CityItemResponseToJson(CityItemResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'subType': instance.subType,
      'geoCode': instance.geoDataResponse,
    };
