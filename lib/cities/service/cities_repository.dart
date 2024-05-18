import 'package:city_weather_app/cities/client/cities_api_client.dart';
import 'package:city_weather_app/cities/client/models/city/cities_request.dart';
import 'package:city_weather_app/cities/client/models/city/cities_response.dart';
import 'package:dio/dio.dart';

import '../../core/models/result.dart';

class CitiesRepository {
  final CitiesApiClient _citiesApiClient;

  const CitiesRepository({required CitiesApiClient citiesApiClient}) : _citiesApiClient = citiesApiClient;

  Future<Result<CitiesResponse, void>> getCityList({required CitiesRequest citiesRequest}) async {
    try {
      return Result.success(await _citiesApiClient.getCities(citiesRequest));
    } on DioException catch (_) {
      // logg error
      return const Result.error(null);
    }
  }
}