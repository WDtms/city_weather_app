import 'package:city_weather_app/cities/ui/widgets/cities_search_widget.dart';
import 'package:city_weather_app/cities/ui/widgets/weather_widget.dart';
import 'package:flutter/material.dart';

class CitiesScreen extends StatelessWidget {
  const CitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            CitiesSearchWidget(),
            SizedBox(height: 100),
            WeatherWidget(),
          ],
        ),
      ),
    );
  }
}
