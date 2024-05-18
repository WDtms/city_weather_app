import 'package:city_weather_app/cities/state_management/models/city_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_state.freezed.dart';

@freezed
class CitiesState with _$CitiesState {
  const factory CitiesState({
    required String startsWith,
    required List<CityItem> cityList,
  }) = CitiesStateValue;
}

const emptyCityList = <CityItem>[];