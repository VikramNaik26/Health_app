import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/widgets/app_large_text.dart';
import 'package:health_app/widgets/app_text.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: size.height * .25,
            ),
            Container(
              alignment: Alignment.center,
              width: size.width * .7,
              child: const AppLargeText(
                text: 'Let\'s Get To Know You Better',
                fontSize: 23,
                color: Color(0xff07CFAB),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SvgPicture.asset('assets/icons/Group.svg'),
            const SizedBox(
              height: 30,
            ),
            const AppText(
              text: 'How can we address you?',
              fontSize: 20,
              color: Color(0xff7B6F72),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
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
              child: const TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type your name',
                ),
              ),
            ),
          ],
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
