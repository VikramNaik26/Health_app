import 'package:flutter/material.dart';
import 'package:health_app/widgets/app_large_text.dart';
import 'package:health_app/widgets/app_text.dart';

class HeaderWithProfile extends StatelessWidget {
  const HeaderWithProfile({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppLargeText(text: 'Hi, Nam Duong'),
              SizedBox(
                height: 10,
              ),
              AppText(
                text: 'Wednesday 29 Dec',
                color: Color(0xff5142AB),
                fontWeight: FontWeight.bold,
              )
            ],
          ),
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(44),
              image: const DecorationImage(
                image: AssetImage('assets/images/user.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
