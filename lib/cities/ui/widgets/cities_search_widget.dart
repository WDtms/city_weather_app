import 'package:city_weather_app/cities/state_management/cities_cubit/cities_cubit.dart';
import 'package:city_weather_app/cities/state_management/cities_cubit/cities_state.dart';
import 'package:city_weather_app/cities/state_management/models/city_item.dart';
import 'package:city_weather_app/cities/state_management/weather_cubit/weather_cubit.dart';
import 'package:city_weather_app/cities/ui/widgets/city_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _textFieldHeight = 50.0;

class CitiesSearchWidget extends StatefulWidget {
  const CitiesSearchWidget({super.key});

  @override
  State<CitiesSearchWidget> createState() => _CitiesSearchWidgetState();
}

class _CitiesSearchWidgetState extends State<CitiesSearchWidget> {
  late final FocusNode _focusNode;
  late final TextEditingController _textEditingController;
  final _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    _focusNode = FocusNode();
    _focusNode.addListener(_focusListener);
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.removeListener(_focusListener);
    _focusNode.dispose();
    _textEditingController.dispose();
    _removeOverlay();
    super.dispose();
  }

  void _focusListener() {
    if (!_focusNode.hasFocus) {
      _removeOverlay();
    }
  }

  void _showOverlay(BuildContext context, List<CityItem> cityList) => WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) {
          return;
        }

        final overlay = Overlay.of(context);
        if (_overlayEntry != null) {
          _removeOverlay();
        }

        if (cityList.isEmpty) {
          return;
        }

        _overlayEntry = OverlayEntry(
          builder: (ctx) => CompositedTransformFollower(
            link: _layerLink,
            showWhenUnlinked: false,
            offset: const Offset(0, _textFieldHeight),
            child: DefaultTextStyle(
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      color: Colors.white,
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: cityList.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 1),
                        itemBuilder: (context, idx) {
                          final city = cityList[idx];

                          return CityItemWidget(
                            title: city.title,
                            onTap: () {
                              context.read<WeatherCubit>().loadWeather(
                                longitude: city.longitude.toString(),
                                latitude: city.latitude.toString(),
                              );

                              _textEditingController.text = city.title;
                              _focusNode.unfocus();
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );

        overlay.insert(_overlayEntry!);
      });

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CitiesCubit, CitiesState>(
      listener: (context, state) {
        _showOverlay(context, state.cityList);
      },
      child: CompositedTransformTarget(
        link: _layerLink,
        child: SizedBox(
          height: _textFieldHeight,
          child: TextField(
            focusNode: _focusNode,
            controller: _textEditingController,
            onChanged: (newVal) => context.read<CitiesCubit>().setStartsWith(startsWith: newVal),
          ),
        ),
      ),
    );
  }
}
