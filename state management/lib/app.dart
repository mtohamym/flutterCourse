import 'package:flutter/material.dart';
import 'package:state_mangment/counter/view/counter_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Counter",
      home: CounterApp(),
    );
  }
}
