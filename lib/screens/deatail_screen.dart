import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/routes/app_router.dart';
import 'package:health_app/screens/home_screen.dart';
import 'package:health_app/widgets/app_large_text.dart';
import 'package:health_app/widgets/app_text.dart';
import 'package:health_app/widgets/calories_card.dart';

@RoutePage()
class DeatailPage extends StatefulWidget {
  const DeatailPage({super.key});

  @override
  State<DeatailPage> createState() => _DeatailPageState();
}

class _DeatailPageState extends State<DeatailPage> {
  bool isVisible = false;
  final String toggleUicon = 'assets/icons/upArrow.svg';
  final String toggleDicon = 'assets/icons/downArrow.svg';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          detailsPageHeader(),
          caloriesGraph(size),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: 'Workouts',
                  color: Color(0xff061941),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                AppText(
                  text: 'Show all',
                  color: Color(0xff5142AB),
                  fontSize: 14,
                ),
              ],
            ),
          ),
          const CaloriesCard(
            activity: 'Outdoor Run',
            distance: '1,31',
            distanceUnit: 'km',
            calories: '140',
          ),
          cardDiivider(),
          const CaloriesCard(
            activity: 'Outdoor Run',
            distance: '0,81',
            distanceUnit: 'km',
            calories: '40',
          ),
          cardDiivider(),
          const CaloriesCard(
            activity: 'Outdoor Run',
            distance: '1,71',
            distanceUnit: 'km',
            calories: '150',
          )
        ],
      ),
    );
  }

  Divider cardDiivider() {
    return Divider(
      height: 3,
      thickness: 2,
      indent: 20,
      endIndent: 20,
      color: Colors.grey.withOpacity(0.2),
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
                top: 0,
                left: size.width * .2,
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
                      text: '8:20 am',
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
              // Navigator.pop(context);
              context.router.pop(const DeatailRoute());
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
