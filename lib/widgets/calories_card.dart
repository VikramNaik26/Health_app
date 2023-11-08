import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/widgets/app_text.dart';
import 'package:health_app/widgets/calories_readings.dart';

class CaloriesCard extends StatefulWidget {
  const CaloriesCard({
    super.key,
    required this.activity,
    required this.distance,
    required this.distanceUnit,
    required this.calories,
  });

  final String activity;
  final String distance;
  final String distanceUnit;
  final String calories;

  @override
  State<CaloriesCard> createState() => _CaloriesCardState();
}

class _CaloriesCardState extends State<CaloriesCard> {
  bool isVisible = false;
  final String toggleUicon = 'assets/icons/upArrow.svg';
  final String toggleDicon = 'assets/icons/downArrow.svg';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  
                  Container(

                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xff5142AB).withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset('assets/icons/walk.svg'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: 'Outdoor Run',
                        color: Color(0xff53668E),
                        fontSize: 14,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          AppText(
                            text: '1,31',
                            color: Color(0xff53668E),
                          ),
                          AppText(
                            text: 'km',
                            color: Color(0xff9DA4B4),
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const AppText(
                    text: '140',
                    color: Color(0xff5142AB),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const AppText(
                    text: 'kcal',
                    color: Color.fromARGB(200, 81, 66, 171),
                    fontSize: 12,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                        if (isVisible) {}
                      });
                    },
                    icon: SvgPicture.asset(
                      isVisible ? toggleUicon : toggleDicon,
                      // 'assets/icons/downArrow.svg',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Visibility(
          visible: isVisible,
          // visible: false,
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CaloriesReading(
                  name: 'Duration',
                  reading: '00:12:34',
                ),
                CaloriesReading(
                  name: 'Total steps',
                  reading: '8372',
                ),
                CaloriesReading(
                  name: 'Avg heart rate',
                  reading: '120',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
