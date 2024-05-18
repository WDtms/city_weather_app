import 'package:city_weather_app/cities/client/models/city/cities_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'models/city/cities_response.dart';

part 'cities_api_client.g.dart';

@RestApi()
abstract class CitiesApiClient {
  factory CitiesApiClient(Dio dio) = _CitiesApiClient;

  @GET('/reference-data/locations/cities')
  Future<CitiesResponse> getCities(@Queries() CitiesRequest citiesRequest);
}
