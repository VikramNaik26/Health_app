import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_app/pages/home_page.dart';
import 'package:health_app/widgets/app_text.dart';
import 'package:health_app/widgets/header_with_profile.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: appBar(),
        body: Column(
          children: [
            HeaderWithProfile(size: size),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                HealthCard(size: size),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HealthCard extends StatelessWidget {
  const HealthCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: size.width * .4,
      height: size.height * .3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff5142AB),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(text: 'Heart'),
                SvgPicture.asset(
                  'assets/icons/duotone.svg',
                )
              ],
            ),
          ),
          SvgPicture.asset('assets/icons/vector.svg', width: size.width * .4),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
            child: AppText(text: '105  bmp'),
          )
        ],
      ),
    );
  }
}
