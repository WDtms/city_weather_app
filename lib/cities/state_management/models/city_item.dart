import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_item.freezed.dart';

@freezed
class CityItem with _$CityItem {
  CityItem._();

  factory CityItem({required String title, required double latitude, required double longitude}) = CityItemValue;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CityItem &&
        other.title == title;
  }

  @override
  int get hashCode => title.hashCode;
}