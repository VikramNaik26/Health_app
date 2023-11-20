import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:health_app/routes/app_router.dart';

@RoutePage()
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red.withOpacity(.4),
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  context.router.push(FirstRoute());
                },
                child: Text('Click second'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
