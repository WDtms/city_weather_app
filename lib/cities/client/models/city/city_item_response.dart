import 'package:freezed_annotation/freezed_annotation.dart';

import 'city_geo_data_response.dart';

part 'city_item_response.g.dart';

@JsonSerializable()
class CityItemResponse {
  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'subType')
  final String? subType;

  @JsonKey(name: 'geoCode')
  final CityGeoDataResponse? geoDataResponse;

  CityItemResponse(this.geoDataResponse, this.name, this.subType);

  factory CityItemResponse.fromJson(Map<String, Object?> json) => _$CityItemResponseFromJson(json);
}