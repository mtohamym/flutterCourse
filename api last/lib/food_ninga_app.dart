import 'package:flutter/material.dart';
import 'package:food_ninja/auth/view/login_screen.dart';
import 'package:food_ninja/auth/view/register_screen.dart';

class FoodNingaApp extends StatelessWidget {
  const FoodNingaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Ninga",
      home: LoginScreen(),
    );
  }
}
