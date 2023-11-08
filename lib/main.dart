import 'package:flutter/material.dart';
import 'package:health_app/pages/deatail_page.dart';
import 'package:health_app/pages/home_page.dart';
import 'package:health_app/pages/main_home_page.dart';
import 'package:health_app/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const ProfilePage(),
    );
  }
}
