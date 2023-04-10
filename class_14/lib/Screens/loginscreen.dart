import 'package:flutter/material.dart';
import 'package:project_1/Screens/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  get navigator => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Padding(padding: EdgeInsets.all(10)),
            Card(
              elevation: 10,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                width: MediaQuery.of(context).size.width - 60,
                height: MediaQuery.of(context).size.height / 1.2,
                //  color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black.withOpacity(0.3),
                  //     blurRadius: 5.0, // soften the shadow
                  //     spreadRadius: 2.0, //extend the shadow
                  //     offset: const Offset(
                  //       2, // Move to right 5  horizontally
                  //       5, // Move to bottom 5 Vertically
                  //     ),
                  //   )
                  // ],
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 25),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 50),
                            child: Text(
                              "to get started.",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const TextField(
                        // onChanged: (value) => print(value),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "Name",
                            prefixIcon: Icon(Icons.person)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const TextField(
                        // onChanged: (value) => print(value),
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const Home()));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 1.6,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(60)),
                          child: const Center(
                              child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Forget your Password?",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            // SizedBox(height: 5,),
            Container(
              height: 50,
              width: 400,
              //color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 3.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: const Offset(
                      2, // Move to right 5  horizontally
                      5, // Move to bottom 5 Vertically
                    ),
                  )
                ],
              ),
              child: const Center(child: Text("Don't have an account ? Sign up")),
            ),
            //
          ],
        ),
      ),
    );
  }
}
