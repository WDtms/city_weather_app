import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_state.freezed.dart';

@freezed
sealed class WeatherState with _$WeatherState {
  const factory WeatherState.idle() = WeatherIdleState;
  const factory WeatherState.loading() = WeatherLoadingState;
  const factory WeatherState.loaded({required String title}) = WeatherLoadedState;
  const factory WeatherState.error({required String latitude, required String longitude}) = WeatherErrorState;
}