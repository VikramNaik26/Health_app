import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:health_app/routes/app_router.dart';

@RoutePage()
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue.withOpacity(.4),
              child: ElevatedButton(
                onPressed: () {
                  context.router.push(SecondRoute());
                },
                child: Text('Click'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
