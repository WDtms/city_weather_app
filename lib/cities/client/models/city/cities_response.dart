import 'package:freezed_annotation/freezed_annotation.dart';

import 'city_item_response.dart';

part 'cities_response.g.dart';

@JsonSerializable()
class CitiesResponse {
  @JsonKey(name: 'data')
  final List<CityItemResponse>? cityList;

  CitiesResponse(this.cityList);

  factory CitiesResponse.fromJson(Map<String, Object?> json) => _$CitiesResponseFromJson(json);
}