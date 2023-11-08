import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/widgets/app_text.dart';

class UserInputField extends StatefulWidget {
  const UserInputField({
    super.key,
    required this.size,
    required this.label,
    required this.hintText,
  });

  final Size size;
  final String label;
  final String hintText;

  @override
  State<UserInputField> createState() => _UserInputFieldState();
}

class _UserInputFieldState extends State<UserInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: widget.label,
            fontSize: 14,
          ),
          SizedBox(
            width: widget.size.width * .55,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                contentPadding: const EdgeInsets.all(15),
                hintText: widget.hintText,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(.8),
                  fontSize: 16,
                ),
                suffixIcon: IconButton(
                  icon: SvgPicture.asset('assets/icons/Edit.svg'),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
