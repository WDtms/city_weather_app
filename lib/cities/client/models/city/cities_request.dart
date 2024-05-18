import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_request.g.dart';

@JsonSerializable()
class CitiesRequest {
  @JsonKey(name: 'countryCode')
  final String countryCode;

  @JsonKey(name: 'max')
  final int expectedMaxCount;

  @JsonKey(name: 'keyword')
  final String startsWith;

  CitiesRequest({required this.startsWith, required this.expectedMaxCount, required this.countryCode});

  Map<String, dynamic> toJson() =>
      _$CitiesRequestToJson(this);
}
