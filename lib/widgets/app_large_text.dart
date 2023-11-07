import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  const AppLargeText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 30,
  });

  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
