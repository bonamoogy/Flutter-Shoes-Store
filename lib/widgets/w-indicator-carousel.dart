import 'package:flutter/material.dart';

class WIndicatorCarousel extends StatelessWidget {
  final bool isActive;

  WIndicatorCarousel({
    @required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        height: 5,
        decoration: BoxDecoration(
          color: Color(0XFF92c6df),
          shape: isActive ? BoxShape.rectangle : BoxShape.circle,
        ),
      ),
    );
  }
}
