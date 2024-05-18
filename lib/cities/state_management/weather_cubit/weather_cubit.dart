import 'package:city_weather_app/cities/client/models/weather/weather_request.dart';
import 'package:city_weather_app/cities/client/models/weather/weather_response.dart';
import 'package:city_weather_app/cities/service/weather_repository.dart';
import 'package:city_weather_app/cities/state_management/weather_cubit/weather_state.dart';
import 'package:city_weather_app/core/constants/environment_constants.dart';
import 'package:city_weather_app/core/models/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherCubit({required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository,
        super(const WeatherState.idle());

  Future<void> loadWeather({required String longitude, required String latitude}) async {
    emit(const WeatherState.loading());

    final request = WeatherRequest(
      latitude: latitude,
      longitude: longitude,
      apiKey: EnvironmentConstants.weatherApiKey,
    );

    final response = await _weatherRepository.getCityWeather(weatherRequest: request);

    switch (response) {
      case ResultError<WeatherResponse, void>():
        return emit(WeatherState.error(longitude: longitude, latitude: latitude));
      case ResultSuccess<WeatherResponse, void>():
        return emit(
          WeatherState.loaded(title: response.result.weather?.temperature.toString() ?? ''),
        );
    }
  }
}
