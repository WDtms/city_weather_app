import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_geo_data_response.g.dart';

@JsonSerializable()
class CityGeoDataResponse {
  @JsonKey(name: 'latitude')
  final double? latitude;

  @JsonKey(name: 'longitude')
  final double? longitude;

  CityGeoDataResponse(this.longitude, this.latitude);

  factory CityGeoDataResponse.fromJson(Map<String, Object?> json) => _$CityGeoDataResponseFromJson(json);
}
