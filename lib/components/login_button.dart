import 'package:flutter/material.dart';

import '../pages/intro_page.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;
  const MyButton({super.key, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const IntroPage();
          },
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black
        ),
        padding: const EdgeInsets.all(10), //for text padding
        margin: const EdgeInsets.symmetric(horizontal: 25), //for container padding,
        child: Center(
          child: const Text(
            "Sign In",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
            ),
          ),
        ),
      ),
    );
  }
}
