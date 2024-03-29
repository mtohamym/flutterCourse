import 'package:flutter/material.dart';
import 'package:state_mangment/home/view/home_screen.dart';

class App extends StatelessWidget {
  const App({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      home: HomeScreen(),
    );
  }
}
