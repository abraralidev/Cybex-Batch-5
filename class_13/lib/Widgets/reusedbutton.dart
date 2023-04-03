import 'package:flutter/material.dart';

class ReusedButton extends StatelessWidget {
  const ReusedButton({
    super.key,
    required this.buttontext,
    required this.onpress,
  });
  final String buttontext;
  final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            // color: Colors.red,
            gradient: const LinearGradient(colors: [
              Colors.black54,
              Colors.red,
              Colors.green,
              Colors.blue,
              Colors.brown,
            ])),
        child: Center(
          child: Text(
            buttontext,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
