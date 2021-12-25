import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digital_quran/Explore/MainScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      title: "Quran Verses for your mood",
    home: MainScreen(),

    );
  }
}
