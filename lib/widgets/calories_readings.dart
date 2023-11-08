import 'package:flutter/material.dart';
import 'package:health_app/widgets/app_text.dart';

class CaloriesReading extends StatelessWidget {
  const CaloriesReading({
    super.key,
    required this.name,
    required this.reading,
  });

  final String name;
  final String reading;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            AppText(
              text: name,
              color: const Color(0xffC5CAD3),
              fontSize: 14,
            ),
            const SizedBox(
              height: 5,
            ),
            AppText(
              text: reading,
              color: const Color(0xff53668E),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ],
        )
      ],
    );
  }
}
