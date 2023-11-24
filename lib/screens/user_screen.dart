import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:health_app/routes/app_router.dart';
import 'package:health_app/widgets/app_text.dart';
import 'package:health_app/widgets/inpu_field.dart';
import 'package:health_app/widgets/user_gender_card.dart';
import 'package:health_app/widgets/user_card.dart';

@RoutePage()
class UserInfoPage extends StatefulWidget {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  int index = 0;

  void updateIndex(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> userDetails = [
      const UserCard(
        subQuestion: 'How can we address you?',
        svgPath: 'assets/icons/Group.svg',
        hintText: 'Type your name',
        question: 'Let\'s Get To Know You Better',
      ),
      const UserGenderCard(),
      const UserCard(
        svgPath: 'assets/icons/date-of-birth-icon.svg',
        question: 'Enter your Age?',
        hintText: 'Type your age',
      ),
      const UserCard(
        svgPath: 'assets/icons/body-weight-scales-icon.svg',
        question: 'What is your current Weight?',
        hintText: 'Type your weight',
      ),
      const UserCard(
        svgPath: 'assets/icons/measure-height-icon.svg',
        question: 'What is your current Height?',
        hintText: 'Type your height',
      ),
      const UserCard(
        svgPath: 'assets/icons/compass-active.svg',
        question: 'How active you are?',
        hintText: 'Use Dropdown menu',
      ),
      const UserCard(
        svgPath: 'assets/icons/temperature-low.svg',
        question: 'What is your current Temperature?',
        hintText: 'Use Dropdown menu',
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            userDetails[index],
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 32,
              ),
              child: Row(
                mainAxisAlignment: index > 0
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.end,
                children: [
                  if (index > 0)
                    TextButton(
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
                        child: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => updateIndex(index - 1),
                    ),
                  if (index < userDetails.length - 1)
                    TextButton(
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
                          child: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          )),
                      onPressed: () {
                        updateIndex(index + 1);
                      },
                    ),
                  if (index == userDetails.length - 1)
                    TextButton(
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff1EFFD7),
                              Color(0xff008080),
                            ],
                          ),
                        ),
                        child: const AppText(
                          text: 'Check Now',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        // Handle the button press at the last index
                        context.router.push(const ResultRoute());
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
