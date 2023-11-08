import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/pages/deatail_page.dart';
import 'package:health_app/pages/home_page.dart';
import 'package:health_app/widgets/header_with_profile.dart';
import 'package:health_app/widgets/health_card.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: appBar(),
        body: mainHomeBody(size),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Home.svg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Frame 1.svg'),
              label: 'Frame',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/navigate.svg'),
              label: 'Frame',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/person.svg'),
              label: 'Profile',
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: SvgPicture.asset(
            'assets/icons/addIcon.svg',
          ),
        ),
      ),
    );
  }

  SingleChildScrollView mainHomeBody(Size size) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HeaderWithProfile(size: size),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HealthCard(
                      size: size,
                      title: 'Heart',
                      textColor: Colors.white,
                      iconPath: 'assets/icons/duotone.svg',
                      readings: '105',
                      unit: 'bpm',
                      borderColor: Colors.black,
                      backgroundColor: const Color(0xff5142AB),
                      mainIconPath: 'assets/icons/vector.svg',
                      // mainIconWidth: size.width * .4,
                    ),
                    HealthCard(
                      size: size,
                      title: 'Water',
                      iconPath: 'assets/icons/Water.svg',
                      mainIconPath: 'assets/icons/water iluss.svg',
                      readings: '1.0',
                      unit: 'liters',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        HealthCard(
                          size: size,
                          title: 'Walk',
                          iconPath: 'assets/icons/walk.svg',
                          mainIconPath: 'assets/icons/Graph.svg',
                          height: size.height * .25,
                          isReadingsCenter: true,
                          readings: '5460',
                          unit: 'steps',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        HealthCard(
                          size: size,
                          title: 'Sleep',
                          iconPath: 'assets/icons/Bed.svg',
                          height: size.height * .15,
                          readings: '06:32',
                          unit: 'hours',
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DeatailPage(),
                          ),
                        );
                      },
                      child: HealthCard(
                        size: size,
                        title: 'Calories',
                        iconPath: 'assets/icons/Calories.svg',
                        height: size.height * 0.40 + 20,
                        mainIconPath: 'assets/icons/Line.svg',
                        readings: '540',
                        unit: 'kcal',
                        linearGradient: const LinearGradient(
                          begin: Alignment.topCenter, // Starting from the left
                          end: Alignment.bottomCenter, // Ending at the right
                          colors: [
                            Colors.white,
                            Color.fromARGB(255, 229, 233, 248),
                          ], // Color stops
                          stops: [0.0, 1.0819], // Color stops positions
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
