import 'dart:async';

import 'package:city_weather_app/cities/client/adapter/cities_adapter.dart';
import 'package:city_weather_app/cities/client/models/city/cities_request.dart';
import 'package:city_weather_app/cities/state_management/cities_cubit/cities_state.dart';
import 'package:city_weather_app/cities/state_management/models/city_item.dart';
import 'package:city_weather_app/core/models/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _expectedMaxCount = 20;
const _defaultCountryCode = 'us';

class CitiesCubit extends Cubit<CitiesState> {
  final CitiesAdapter _citiesAdapter;
  final String _countryCode;

  late StreamSubscription<String> _stateSubscription;

  CitiesCubit({required CitiesAdapter citiesAdapter, required String? languageCode})
      : _citiesAdapter = citiesAdapter,
        _countryCode = languageCode ?? _defaultCountryCode,
        super(const CitiesState(startsWith: '', cityList: emptyCityList)) {
    _stateSubscription = stream.map((newState) => newState.startsWith).distinct().listen((newVal) {
      _loadCityList(startsWith: newVal);
    });
  }

  @override
  Future<void> close() {
    _stateSubscription.cancel();
    return super.close();
  }

  void setStartsWith({required String? startsWith}) {
    if (startsWith == null) {
      return;
    }

    final curList = List<CityItem>.from(state.cityList);
    curList.removeWhere((city) => !city.title.toLowerCase().startsWith(startsWith.toLowerCase()));

    emit(
      CitiesState(
        startsWith: startsWith ?? '',
        cityList: curList,
      ),
    );
  }

  Future<void> _loadCityList({required String startsWith}) async {
    if (startsWith.isEmpty) {
      return;
    }
    if (startsWith.length < 3) {
      return;
    }
    if (startsWith != state.startsWith) {
      return;
    }

    final request = CitiesRequest(
      startsWith: startsWith,
      expectedMaxCount: _expectedMaxCount,
      countryCode: _countryCode,
    );

    final response = await _citiesAdapter.getCityList(citiesRequest: request);

    switch (response) {
      case ResultError<List<CityItem>, void>():
        await Future.delayed(const Duration(seconds: 2));

        return _loadCityList(startsWith: startsWith);
      case ResultSuccess<List<CityItem>, void>():
        return _handleLoadedList(response.result);
    }
  }

  void _handleLoadedList(List<CityItem> list) {
    // startsWith could have changed
    final startsWith = state.startsWith;
    List<CityItem> filteredOldList = state.cityList
        .where(
          (city) => city.title.toLowerCase().startsWith(
                startsWith.toLowerCase(),
              ),
        )
        .toList();
    List<CityItem> filteredNewList = list
        .where(
          (city) => city.title.toLowerCase().startsWith(
                startsWith.toLowerCase(),
              ),
        )
        .toList();

    final Set<String> newCities = filteredNewList.map((city) => city.title).toSet();
    List<CityItem> mergedList = filteredOldList.where((city) => newCities.contains(city.title)).toList();
    final Set<String> addedTitles = mergedList.map((city) => city.title).toSet();

    for (var city in filteredNewList) {
      if (!addedTitles.contains(city.title)) {
        mergedList.add(city);
        addedTitles.add(city.title);
      }
    }

    final resultList = mergedList.take(10).toList();

    emit(CitiesState(startsWith: state.startsWith, cityList: resultList));
  }
}
