import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late final TextEditingController _userDetails;

  @override
  void initState() {
    super.initState();
    _userDetails = TextEditingController();
  }

  @override
  void dispose() {
    _userDetails.dispose();
    super.dispose();
  }

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
        controller: _userDetails,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 22),
          border: InputBorder.none,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
