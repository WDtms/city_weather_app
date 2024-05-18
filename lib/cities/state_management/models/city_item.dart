import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_item.freezed.dart';

@freezed
class CityItem with _$CityItem {
  const factory CityItem({required String title, required double latitude, required double longitude}) = CityItemValue;
}