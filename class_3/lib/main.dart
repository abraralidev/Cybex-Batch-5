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
      title: 'Class 3',
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        // step 1: if you want to change the color of appbar then call the background property
        // step 2: then call the color property and pass the color name in it
        backgroundColor: Colors.red,
//===================================== Leading Point ===============================================
        // here we learn how to add icon widget
        // Step 1: if you want to call icon first of all call the leading property in appbar widgets,
        // Step 2: then call the icon widget and pass the icon name in it
        // leading: const Icon(
        // Step 1: here we call the Icons Name
        // Icons.menu,
        // Step 2: if you want to change the color of the icon then call color property
        // color: Colors.white,
        // ),
//=================================== Title =================================================
// step 1: Here we call the title property
// step 2: then call the Text widget
        title: const Text('Class 3'),
//=================================== Actions for calling multiple widget Because it use Array =================================================
        actions: const [
          // step 1: if you want to call multiple widget then call the actions property
          // step 2: then call the icon widget and pass the icon name in it
//========================================== 1st Icon=============================================================
          Icon(
            // Step 1: here we call the Icons Name
            Icons.access_time,
            // Step 2: if you want to change the color of the icon then call color property
            color: Colors.white,
          ),
//========================================== 2nd Icon=============================================================

          Icon(
            // Step 1: here we call the Icons Name
            Icons.search,
            // Step 2: if you want to change the color of the icon then call color property
            color: Colors.white,
          ),
//========================================== 3rd Icon=============================================================
          Icon(
            // Step 1: here we call the Icons Name
            Icons.more_vert,
            // Step 2: if you want to change the color of the icon then call color property
            color: Colors.white,
          ),
        ],
      ),
//========================================== Side menu=============================================================
      drawer: const Drawer(),
//========================================== Main Body=============================================================
// Single Child Widget in which have child property
// Multiple Child Widgt in which have children property
// Step 1: Call body property in Scaffold
// Step 2: Call Center widget
// Step 3: Call Container widget
      body: Center(
        child: Container(
// Step 1: call the property of width for size
// Step 2: call the property of height for size
// Step 3: call the property of decoration for style
// Step 4: call the property of decoration for style then call  BoxDecoration in decoration property
          width: 200,
          height: 200,
          // color: Colors.red,
          decoration: BoxDecoration(
// tips: if you call the color property outside the BoxDecoration it will show an error
            color: Colors.red,
// here we call the borderRadius for style the box edge          
            borderRadius: BorderRadius.circular(30),
          ),
// here we call the child property for adding the text widget          
          child: const Text('Hello World'),
        ),
      ),
    );
  }
}

// materialApp (Done)
// Scaffold (Done)
// - backgroundColor (Done)
// - Appbar (Done)
// - Drawer (Done)
// - body (Done) 
 

// Text (Done)
// Icon (Done)
//  - color (Done)
// AppBar (Done)
// - backgroundColor (Done)
// - leading (Done)
// - title (Done)
// - actions (Done)
// drawer (Done)
// center (Done)
// container (Done)
// - width (Done)
// - height (Done)
// - color (Done)
// - decoration (Done)
//   - BoxDecoration (Done)
//      - color (Done)
//      - border radius (Done)
// here the - symbol is added for understand that are properties of the widgets
