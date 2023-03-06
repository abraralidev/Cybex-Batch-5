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
            
// here we call Expanded widget for responsiveness            
            Expanded(
                child: Row(children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.red,
// how to call assets image 
// step 1: make a folder outside from lib with the name of assets
// step 2: put the downloaded image in the assets folder
// step 3: open pubspec.yaml file and remove the # from asset then the image line replace with -assets/
// step 4: now call your image like this given below
// tips if everything is correct but the image does't show then run these commends in ternimal
                  // 1. flutter clean
                  // 2. flutter pub get
                  
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
