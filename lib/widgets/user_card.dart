import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/widgets/app_large_text.dart';
import 'package:health_app/widgets/app_text.dart';
import 'package:health_app/widgets/inpu_field.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    this.subQuestion = '',
    required this.svgPath,
    required this.question,
    required this.hintText,
    required this.controller,
  });

  final String subQuestion;
  final String svgPath;
  final String question;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * .20,
        ),
        Container(
          alignment: Alignment.center,
          width: size.width * .7,
          child: AppLargeText(
            text: question,
            fontSize: 23,
            color: const Color(0xff07CFAB),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SvgPicture.asset(svgPath),
        const SizedBox(
          height: 30,
        ),
        if (subQuestion.isNotEmpty)
          AppText(
            text: subQuestion,
            fontSize: 20,
            color: const Color(0xff7B6F72),
          ),
        const SizedBox(
          height: 30,
        ),
        InputField(
          hintText: hintText,
          controller: controller,
        ),
      ],
    );
  }
}
