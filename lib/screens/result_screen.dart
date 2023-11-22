import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:health_app/widgets/app_text.dart';
import 'package:health_app/widgets/health_card.dart';

@RoutePage()
class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const AppText(
                text: 'Hello Name',
                fontSize: 24,
                color: Color(0xff05958E),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => DetailList(
                    size: size,
                  ),
                  itemCount: 6,
                ),
              ),
              HealthCard(
                size: size,
                title: 'Water',
                mainIconPath: 'assets/icons/Water iluss.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailList extends StatelessWidget {
  const DetailList({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 10),
      alignment: Alignment.center,
      width: size.width * .8,
      height: 55,
      decoration: BoxDecoration(
        color: const Color(0xff19EAC8),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const AppText(
        text: 'Age',
        color: Colors.white,
        fontSize: 22,
      ),
    );
  }
}
