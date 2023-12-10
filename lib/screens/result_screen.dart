import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/widgets/app_text.dart';

import '../calculations.dart';

@RoutePage()
class ResultPage extends StatefulWidget {
  const ResultPage({
    Key? key, // Change here
    required this.nameController,
    required this.ageController,
    required this.weightController,
    required this.heightController,
    required this.activityController,
    required this.temperatureController,
    required this.gender,
  }) : super(key: key);

  final TextEditingController nameController;
  final String gender;
  final TextEditingController ageController;
  final TextEditingController weightController;
  final TextEditingController heightController;
  final TextEditingController activityController;
  final TextEditingController temperatureController;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late final double requiredWater;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    String name = widget.nameController.text;
    String gender = widget.gender;
    String age = widget.ageController.text;
    String weight = widget.weightController.text;
    String height = widget.heightController.text;
    String activity = widget.activityController.text;
    String temperature = widget.temperatureController.text;

    bool anyControllerIsEmpty = [
      name,
      age,
      gender,
      weight,
      height,
      activity,
      temperature,
    ].any((value) => value.isEmpty);

    final Map inputDeatails = {
      'Age:': age,
      'Gender:': gender,
      'Weight:': weight,
      'Height:': height,
      'Activeness:': activity,
      'Temp Factor:': temperature,
    };

    if (anyControllerIsEmpty) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 6),
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/invalid.jpg'))),
              ),
              const AppText(
                text: 'Please fill in all the details',
                fontSize: 28,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 60,
                  width: 160,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff1EFFD7),
                        Color(0xff008080),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const AppText(
                    text: 'Refill the Details',
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  context.router.pop();
                },
              ),
            ],
          ),
        ),
      );
    } else {
      double bmr = getBMR(gender, double.parse(weight), double.parse(height),
          double.parse(age));
      double physicalAct = getPhysicalAct();
      double tempFactor = getTempFactor(double.parse(temperature));
      double tdwn = getTDWN(bmr, physicalAct, tempFactor);
      requiredWater = (tdwn / 1000);

      /* print('$age $weight $height $temperature');
      print(double.parse(age).runtimeType); */
      // print('$physicalAct $tempFactor $tdwn $bmr');
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: AppText(
                  text: 'Hello, $name',
                  fontSize: 32,
                  color: const Color(0xff05958E),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 480,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => DetailList(
                    size: size,
                    keys: inputDeatails.keys.elementAt(index),
                    values: inputDeatails.values.elementAt(index),
                  ),
                  itemCount: inputDeatails.length,
                ),
              ),
              WaterCard(
                size: size,
                requiredWater: requiredWater,
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WaterCard extends StatelessWidget {
  const WaterCard({
    super.key,
    required this.size,
    required this.requiredWater,
  });

  final Size size;
  final double requiredWater;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .3,
      width: size.width * .8,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 3,
          color: const Color(0xffEDEFF7),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xffEDEFF7),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 2,
          )
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppText(
            text: 'Water',
            fontSize: 32,
            color: Color(0xff52668D),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: '${requiredWater.toStringAsFixed(2)} Liters',
                color: const Color(0xff867E7E),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                width: 20,
              ),
              SvgPicture.asset('assets/icons/waterResult.svg'),
            ],
          )
        ],
      ),
    );
  }
}

class DetailList extends StatelessWidget {
  const DetailList({
    super.key,
    required this.size,
    required this.keys,
    required this.values,
  });

  final Size size;
  final String keys;
  final String values;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      width: size.width * .8,
      height: 55,
      decoration: BoxDecoration(
        color: const Color(0xff19EAC8),
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: keys,
            color: Colors.white,
            fontSize: 22,
          ),
          AppText(
            text: values,
            color: Colors.white,
            fontSize: 22,
          ),
        ],
      ),
    );
  }
}
