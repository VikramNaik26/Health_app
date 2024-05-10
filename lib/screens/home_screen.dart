import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:health_app/routes/app_router.dart';
import 'package:health_app/widgets/app_large_text.dart';
import 'package:health_app/widgets/app_text.dart';

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: appBar(),
        body: body(size),
      ),
    );
  }

  SizedBox body(Size size) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.12,
          ),
          Image.asset('assets/images/homePage.jpg'),
          const AppLargeText(
            text: 'Your body needs water',
          ),
          SizedBox(height: size.height * 0.05),
          const AppText(
            text: 'Track your daily water intake in just a few taps!',
          ),
          SizedBox(height: size.height * 0.15),
          FloatingActionButton(
            backgroundColor: const Color(0xFFAA88FF),
            shape: const CircleBorder(),
            onPressed: () {
              /* Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainPage(),
                ),
              ); */
              context.router.push(const MainRoute());
            },
            child: const Icon(
              Icons.chevron_right,
              size: 38,
            ),
          ),
        ],
      ),
    );
  }
}

AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 22,
    elevation: 0,
    leading: const Padding(
      padding: EdgeInsets.only(
        top: 4.0,
        left: 10,
      ),
      child: Text(
        '9:41',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      ),
    ),
    actions: const [
      Icon(
        Icons.signal_cellular_4_bar_sharp,
        color: Colors.black87,
        size: 20,
      ),
      SizedBox(
        width: 3.5,
      ),
      Icon(
        Icons.wifi,
        color: Colors.black87,
        size: 20,
      ),
      SizedBox(
        width: 2,
      ),
      Icon(
        Icons.battery_charging_full,
        color: Colors.black87,
        size: 20,
      ),
      SizedBox(
        width: 2,
      ),
    ],
  );
}
