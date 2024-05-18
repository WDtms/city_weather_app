import 'package:flutter/material.dart';

class CityItemWidget extends StatelessWidget {
  final String title;
  final GestureTapCallback onTap;

  const CityItemWidget({required this.onTap, required this.title, super.key});

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          width: double.infinity,
          color: Colors.black45,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
}
