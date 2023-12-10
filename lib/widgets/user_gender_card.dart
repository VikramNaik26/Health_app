import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/widgets/app_large_text.dart';
import 'package:health_app/widgets/app_text.dart';

class UserGenderCard extends StatefulWidget {
  const UserGenderCard({
    super.key,
    required this.onGenderSelected,
  });

  final void Function(String?) onGenderSelected;

  @override
  State<UserGenderCard> createState() => _UserGenderCardState();
}

class _UserGenderCardState extends State<UserGenderCard> {
  String? selectedGender;

  /* void onGenderSelected() {
    // Handle the selected gender value, e.g., print it
    print('Selected Gender: $selectedGender');
  } */

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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GenderButton(
              gender: 'Male',
              isSelected: selectedGender == 'Male',
              onPressed: () {
                setState(() {
                  selectedGender = 'Male';
                });
                widget.onGenderSelected(selectedGender);
              },
            ),
            GenderButton(
              gender: 'Female',
              isSelected: selectedGender == 'Female',
              onPressed: () {
                setState(() {
                  selectedGender = 'Female';
                });
                widget.onGenderSelected(selectedGender);
              },
            )
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
    required this.onPressed,
    required this.isSelected,
  });

  final String gender;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 40,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: isSelected
                ? const LinearGradient(
                    colors: [
                      Color.fromRGBO(30, 255, 215, 1),
                      Color.fromRGBO(0, 128, 128, 1),
                    ],
                  )
                : const LinearGradient(
                    colors: [
                      Color.fromRGBO(30, 255, 215, 0.50),
                      Color.fromRGBO(0, 128, 128, 0.50),
                    ],
                  )),
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
