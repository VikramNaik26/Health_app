import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/widgets/app_large_text.dart';
import 'package:health_app/widgets/app_text.dart';
import 'package:health_app/widgets/inpu_field.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: UserNameCard(
          size: size,
          subQuestion: 'How can we address you?',
          svgPath: 'assets/icons/Group.svg',
          hintText: 'Type your name',
          question: 'Let\'s Get To Know You Better',
        ),
        floatingActionButton: FloatingActionButton(
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff1EFFD7),
                  Color(0xff008080),
                ],
              ),
            ),
            child: const Icon(Icons.chevron_right),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class UserGenderCard extends StatelessWidget {
  const UserGenderCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * .20,
        ),
        Container(
          alignment: Alignment.center,
          width: size.width * .7,
          child: const AppLargeText(
            text: 'What is your Gender?',
            fontSize: 23,
            color: Color(0xff07CFAB),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset('assets/icons/male_icon.svg'),
            SvgPicture.asset('assets/icons/female-icon.svg'),
          ],
        ),
      ],
    );
  }
}

class UserNameCard extends StatelessWidget {
  const UserNameCard({
    super.key,
    required this.size,
    this.subQuestion = '',
    required this.svgPath,
    required this.question,
    required this.hintText,
  });

  final Size size;
  final String subQuestion;
  final String svgPath;
  final String question;
  final String hintText;

  @override
  Widget build(BuildContext context) {
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
            color: Color(0xff07CFAB),
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
        ),
      ],
    );
  }
}
