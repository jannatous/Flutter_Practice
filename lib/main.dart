import 'package:flutter/material.dart';
import 'package:flutter_practice/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen(),

      ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
