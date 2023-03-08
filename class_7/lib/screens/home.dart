import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //===================================Row No 1=======================================================
              Padding(
                padding: const EdgeInsets.all(8.0),
                // This widget is use for scrolling
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),

              //===================================Row No 2=======================================================
              Padding(
                padding: const EdgeInsets.all(8.0),
                // This widget is use for scrolling
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),

              //===================================Row No 3=======================================================
              Padding(
                padding: const EdgeInsets.all(8.0),
                // This widget is use for scrolling
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
     // here SizedBox is used for space between two objects                     
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
    // here SizedBox is used for space between two objects                      
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
              //===================================Row No 3=======================================================
              Padding(
                padding: const EdgeInsets.all(8.0),
                // This widget is use for scrolling
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
  // here SizedBox is used for space between two objects        
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
 // here SizedBox is used for space between two objects     
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}


// SingleChildScrollView
// Stack 
// sizedbox