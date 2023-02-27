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
      title: 'Class 4',
      debugShowCheckedModeBanner: false,
      home: Home2(),
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
        title: const Text('Class 4'),
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
          width: 100,
          height: 100,
          // color: Colors.red,
          decoration: BoxDecoration(
// tips: if you call the color property outside the BoxDecoration it will show an error
            color: Colors.red,
// here we call the borderRadius for style the box edge
            borderRadius: BorderRadius.circular(30),
          ),
// here we call the child property for adding the text widget
          child: const Center(
              child: Text(
            'Hello World',
// here we call the style property for adding the text style
            style: TextStyle(
                // Font color
                color: Colors.white,
                // Font Size
                fontSize: 30,
                // Font Bold
                fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

// here we make a class for using Row and Column widget
class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Class 4"),
       //  elevation is use for shadow
        elevation: 10,
      ),
      body: Center(
        // here we call a Column widget for adding multiple widget in one place
        child: Column(
            // here we call a crossAxisAlignment property for align multiple widgets
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
// ==================================Container 1==========================================
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
// ==================================Container 2==========================================
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
// ==================================Container 3==========================================
              Container(
                width: 100,
                height: 100,
                color: Colors.blueGrey,
              ),
              // here we call a Row widget for adding multiple widget in one place
              Row(
                children: [
// ==================================Container 1==========================================
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
// ==================================Container 2==========================================
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
// ==================================Container 3==========================================
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                ],
              )
            ]),
      ),
    );
  }
}

// materialApp (Done)
// Scaffold (Done)

// Text (Done)
// Icon (Done)
//  - color (Done)
// AppBar (Done)
// - backgroundColor (Done)
// - leading (Done)
// - title (Done)
// - actions (Done)
// - centerTitle (Done)
// - elevation (Done)
// Row
// - mainAxisAlignment (Done)
// - crossAxisAlignment (Done)
// Column
// - mainAxisAlignment (Done)
// - crossAxisAlignment (Done)

// here the - symbol is added for understand that are properties of the widgets
