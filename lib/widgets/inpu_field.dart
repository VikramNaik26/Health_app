import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 36,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color.fromRGBO(0, 0, 0, 0.18),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 22),
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}
