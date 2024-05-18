import 'package:city_weather_app/cities/client/models/city/cities_request.dart';
import 'package:city_weather_app/cities/client/models/city/cities_response.dart';
import 'package:city_weather_app/cities/service/cities_repository.dart';
import 'package:city_weather_app/cities/state_management/models/city_item.dart';
import 'package:city_weather_app/core/models/result.dart';

class CitiesAdapter {
  final CitiesRepository _citiesRepository;

  CitiesAdapter({required CitiesRepository citiesRepository}) : _citiesRepository = citiesRepository;

  Future<Result<List<CityItem>, void>> getCityList({required CitiesRequest citiesRequest}) async {
    final result = await _citiesRepository.getCityList(citiesRequest: citiesRequest);

    switch (result) {
      case ResultError<CitiesResponse, void>():
        return const Result.error(null);
      case ResultSuccess<CitiesResponse, void>():
        return Result.success(_getCityList(result.result));
    }
  }

  List<CityItem> _getCityList(CitiesResponse citiesResponse) {
    final list = citiesResponse.cityList;
    if (list == null) {
      return [];
    }

    List<CityItem> listToReturn = [];
    for (var responseItem in list) {
      final title = responseItem.name;
      if (title == null || title.isEmpty) {
        continue;
      }

      if (responseItem.subType != 'city') {
        continue;
      }

      final longitude = responseItem.geoDataResponse?.longitude;
      final latitude = responseItem.geoDataResponse?.latitude;
      if (latitude == null || longitude == null) {
        continue;
      }

      listToReturn.add(CityItem(title: title, latitude: latitude, longitude: longitude));
    }

    return listToReturn;
  }
}