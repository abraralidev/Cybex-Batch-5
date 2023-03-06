import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Class 6'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.red,
                  child: Image.asset(
                    'assets/wallpaper.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.red,
                  child: Image.asset(
                    'assets/wallpaper.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ])),

          ],
        ));
  }
}
