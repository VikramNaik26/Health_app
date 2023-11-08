import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/pages/home_page.dart';
import 'package:health_app/widgets/app_large_text.dart';
import 'package:health_app/widgets/app_text.dart';

class DeatailPage extends StatefulWidget {
  const DeatailPage({super.key});

  @override
  State<DeatailPage> createState() => _DeatailPageState();
}

class _DeatailPageState extends State<DeatailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          detailsPageHeader(),
          caloriesGraph(size),
        ],
      ),
    );
  }

  SizedBox caloriesGraph(Size size) {
    return SizedBox(
      width: size.width,
      height: size.height * .45,
      child: Column(
        children: [
          const AppLargeText(
            text: '540',
            color: Color(0xff5142AB),
            fontSize: 32,
          ),
          const SizedBox(
            height: 10,
          ),
          AppText(
            text: 'calories burned',
            color: const Color(0xff5142AB).withOpacity(.5),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              SvgPicture.asset(
                'assets/icons/Line.svg',
                width: size.width,
              ),
              Positioned(
                top: 1,
                left: size.width * .22,
                child: SizedBox(
                  height: 450,
                  child: Column(children: [
                    const AppText(
                      text: '-540 Kcal',
                      color: Color(0xff2FBAF4),
                      fontSize: 12,
                    ),
                    SvgPicture.asset(
                      'assets/icons/Circle.svg',
                    ),
                    const AppText(
                      text: '8:20 Am',
                      color: Color(0xff5142AB),
                      fontSize: 14,
                    ),
                  ]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container detailsPageHeader() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
              size: 30,
            ),
          ),
          const AppText(
            text: 'Calories',
            color: Color(0xff061941),
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }
}
