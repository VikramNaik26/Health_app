import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/widgets/app_large_text.dart';
import 'package:health_app/widgets/app_text.dart';

class UserGenderCard extends StatelessWidget {
  const UserGenderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        const SizedBox(
          height: 40,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GenderButton(gender: 'Male'),
            GenderButton(gender: 'Female')
          ],
        )
      ],
    );
  }
}

class GenderButton extends StatelessWidget {
  const GenderButton({
    super.key,
    required this.gender,
  });

  final String gender;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 40,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(30, 255, 215, 0.50),
              Color.fromRGBO(0, 128, 128, 0.50),
            ],
          ),
        ),
        child: AppText(
          text: gender,
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
