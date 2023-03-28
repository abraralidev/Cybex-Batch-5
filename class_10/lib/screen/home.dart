// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  var namelist = [
    'Ali',
    "Umer",
    "Ahmed",
    "Sajid",
    "Sami",
  ];

  var msglist = [
    'Hi!',
    "How are you?",
    "Where you from",
    "What's Happening",
    "What's up",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Class 10"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.red,
              child: const Center(
                  child: Text(
                "MediaQuery",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
            ),
            ListView.builder(
              itemCount: namelist.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 5,
                  child: ListTile(
                    leading: const CircleAvatar(),
                    title: Text(namelist[index]),
                    subtitle: Text(msglist[index]),
                    trailing: const Text("12:30 AM"),
                    tileColor: Colors.white,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
