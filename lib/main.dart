import 'package:city_weather_app/cities/client/adapter/cities_adapter.dart';
import 'package:city_weather_app/cities/client/cities_api_client.dart';
import 'package:city_weather_app/cities/client/weather_api_client.dart';
import 'package:city_weather_app/cities/service/cities_repository.dart';
import 'package:city_weather_app/cities/service/weather_repository.dart';
import 'package:city_weather_app/cities/state_management/cities_cubit/cities_cubit.dart';
import 'package:city_weather_app/cities/state_management/weather_cubit/weather_cubit.dart';
import 'package:city_weather_app/cities/ui/cities_screen.dart';
import 'package:city_weather_app/core/service/amadeus_dio_client.dart';
import 'package:city_weather_app/core/service/dio_client.dart';
import 'package:city_weather_app/core/storage/token_secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (_) => DioClient()),
        Provider(create: (_) => TokenSecureStorage()),
        Provider(create: (ctx) => AmadeusDioClient(tokenSecureStorage: ctx.read<TokenSecureStorage>())),
        Provider(create: (ctx) => WeatherApiClient(ctx.read<DioClient>().instance)),
        Provider(create: (ctx) => CitiesApiClient(ctx.read<AmadeusDioClient>().instance)),
        Provider(create: (ctx) => WeatherRepository(weatherApiClient: ctx.read<WeatherApiClient>())),
        Provider(create: (ctx) => CitiesRepository(citiesApiClient: ctx.read<CitiesApiClient>())),
        Provider(create: (ctx) => CitiesAdapter(citiesRepository: ctx.read<CitiesRepository>())),
        BlocProvider(create: (ctx) => CitiesCubit(citiesAdapter: ctx.read<CitiesAdapter>(), languageCode: 'us')),
        BlocProvider(create: (ctx) => WeatherCubit(weatherRepository: ctx.read<WeatherRepository>())),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CitiesScreen(),
    );
  }
}
