import 'package:flutter/material.dart';

class LoginImages extends StatelessWidget {
  final String imagePath;
  const LoginImages({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white
      ),
      child: Image.asset(
        imagePath,
        height: 25,
      ),
    );
  }
}
