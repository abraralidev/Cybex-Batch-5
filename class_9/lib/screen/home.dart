// ignore_for_file: avoid_print, unused_local_variable

import 'package:flutter/material.dart';

import 'nextpage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
// ========================== Here the Variable of counter ==================================
int counter = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    print('Build');

    return Scaffold(
      appBar: AppBar(
        title: const Text("Class 9"),
      ),
      body: Center(
        child: Text(
          "$counter",
          style: const TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Button No 1
          FloatingActionButton(
            onPressed: () {
       // Setstate function is only use in Statefullwidget   
       // (It is use to update the UI )
              setState(() {
                counter++;
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 5,
          ),
          // Button No 2
          FloatingActionButton(
            onPressed: () {
        // Setstate function is only use in Statefullwidget     
        // (It is use to update the UI ) 
              setState(() {
                counter--;
              });
            },
            child: const Icon(Icons.remove),
          ),
          // Button No 3
          const SizedBox(
            width: 5,
          ),
          FloatingActionButton(
            onPressed: () {
   // ===================================================Navigator===================================================                 
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NextPage()));
//                             Navigator.pushReplacement(context,
//                   MaterialPageRoute(builder: (context) => const NextPage()));
            },
            child: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
   // ================================================BottomNavBar======================================================   
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'Cart'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Profile'
        ),
      ]),
    );
  }
}
