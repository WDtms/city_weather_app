import 'package:city_weather_app/cities/state_management/weather_cubit/weather_cubit.dart';
import 'package:city_weather_app/cities/state_management/weather_cubit/weather_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          switch (state) {
            case WeatherIdleState():
              return const SizedBox.shrink();
            case WeatherLoadingState():
              return const CupertinoActivityIndicator();
            case WeatherLoadedState():
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('temperature: ${state.title}'),
                ],
              );
            case WeatherErrorState():
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Failed to load the weather'),
                  const SizedBox(height: 40),
                  TextButton(
                    onPressed: () => context.read<WeatherCubit>().loadWeather(longitude: state.longitude, latitude: state.latitude),
                    child: const Text('try again'),
                  ),
                ],
              );
          }
        },
      );
}
