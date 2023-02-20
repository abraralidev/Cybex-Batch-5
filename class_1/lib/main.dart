// Widgets
//  Widgets describe what their view should look like given their current configuration and state.
// Two types of widgets
// 1. Stateful widgets
// 2. Stateless widgets
// Stateful widgets
// 1. Maintain state that might change during the lifetime of the widget.

// Stateless widgets
// 1. Do not maintain state.
// 2. Receive arguments from their parent, which they use to derive their current configuration.

import 'package:flutter/material.dart';

//========================Main Function=====================================
void main() {
  runApp(const MyApp());
}
//=============================================================

// if you want change the name of the class press F2
//===========================Main Class IN which you will use MaterialApp(Important for first ) ==================================
class MyApp extends StatelessWidget {
  // Constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Class 1',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
  
}


// materialApp (Done)
// Scaffold (Done)
// AppBar (Done)
