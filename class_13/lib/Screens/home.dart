// ignore_for_file: avoid_print

import 'package:class_13/Screens/nextscreen.dart';
import 'package:flutter/material.dart';

import '../Widgets/reusedbutton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Class 13'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReusedButton(
                  buttontext: 'Next 2nd',
                  onpress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const NextScreen()));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusedButton(
                  buttontext: 'Next 3rd',
                  onpress: () {},
                ),
              ]),
        ));
  }
}
