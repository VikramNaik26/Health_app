import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/widgets/app_text.dart';

class UserInputField extends StatefulWidget {
  UserInputField({
    super.key,
    required this.size,
    required this.label,
    required this.hintText,
    required this.indX,
    required this.userInfo,
    // required this.textFieldEnabled,
  });

  final Size size;
  final String label;
  final String hintText;
  final int indX;
  // bool textFieldEnabled;
  final Map userInfo;

  @override
  State<UserInputField> createState() => _UserInputFieldState();
}

class _UserInputFieldState extends State<UserInputField> {
  bool isReadOnly = true;

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
              readOnly: isReadOnly,
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
                  onPressed: () {
                    //  print(widget.indX);
                    setState(() {
                      isReadOnly = !isReadOnly;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
