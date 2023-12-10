import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/widgets/app_text.dart';

final Map inputDeatails = {
  'Age:': '19',
  'Gender:': 'Male',
  'Weight:': '52',
  'Height:': '164',
  'Activeness:': '',
  'Temp Factor:': '',
};

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
    // required this.gender,
  }) : super(key: key);

  final TextEditingController nameController;
  // final String gender
  final TextEditingController ageController;
  final TextEditingController weightController;
  final TextEditingController heightController;
  final TextEditingController activityController;
  final TextEditingController temperatureController;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    String name = widget.nameController.text;
    String age = widget.ageController.text;
    String weight = widget.weightController.text;
    String height = widget.heightController.text;
    String activity = widget.activityController.text;
    String temperature = widget.temperatureController.text;

    bool anyControllerIsEmpty = [
      name,
      age,
      weight,
      height,
      activity,
      temperature,
    ].any((value) => value.isEmpty);

    if (anyControllerIsEmpty) {
      // Handle the case where any of the controllers is empty or null
      // For example, you can show an error message and return an empty widget
      return const Scaffold(
        body: Center(
          child: Text('Please fill in all the details'),
        ),
      );
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: AppText(
                  text: 'Hello',
                  fontSize: 24,
                  color: Color(0xff05958E),
                  fontWeight: FontWeight.w500,
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
              WaterCard(size: size),
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
  });

  final Size size;

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
              const AppText(
                text: '4.2 Liters',
                color: Color(0xff867E7E),
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
