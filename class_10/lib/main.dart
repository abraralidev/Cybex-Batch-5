import 'package:class_10/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class 10',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Home(),
    );
  }
}
