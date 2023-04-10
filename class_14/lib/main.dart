
import 'package:flutter/material.dart';
import 'package:project_1/Screens/home.dart';
import 'package:project_1/Screens/loginscreen.dart';


void main(List<String> args) {
  runApp(const Myapp());
}class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "project 2",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
