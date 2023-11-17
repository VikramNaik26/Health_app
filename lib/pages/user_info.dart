import 'package:flutter/material.dart';
import 'package:health_app/widgets/user_gender_card.dart';
import 'package:health_app/widgets/user_card.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    const userDetails = [
      UserCard(
        subQuestion: 'How can we address you?',
        svgPath: 'assets/icons/Group.svg',
        hintText: 'Type your name',
        question: 'Let\'s Get To Know You Better',
      ),
      UserCard(
        svgPath: 'assets/icons/date-of-birth-icon.svg',
        question: 'Enter your Age?',
        hintText: 'Type your age',
      ),
      UserCard(
        svgPath: 'assets/icons/body-weight-scales-icon.svg',
        question: 'What is your current Weight?',
        hintText: 'Type your weight',
      ),
      UserCard(
        svgPath: 'assets/icons/measure-height-icon.svg',
        question: 'What is your current Height?',
        hintText: 'Type your height',
      ),
      UserCard(
        svgPath: 'assets/icons/compass-active.svg',
        question: 'How active you are?',
        hintText: 'Use Dropdown menu',
      ),
      UserCard(
        svgPath: 'assets/icons/temperature-low.svg',
        question: 'What is your current Temperature?',
        hintText: 'Use Dropdown menu',
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: UserGenderCard(),
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
