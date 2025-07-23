import 'package:calculator/bmi.dart';
import 'package:calculator/calu.dart';
import 'package:calculator/gst.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: gst(),
    );
  }
}
