import 'package:flutter/material.dart';
import 'package:health_app/widgets/app_large_text.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 14,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            // color: Colors.blue,
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(175, 30, 255, 215),
                Color.fromARGB(175, 0, 128, 128),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const AppLargeText(
            text: 'Save Changes',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
