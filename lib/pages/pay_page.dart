import 'package:flutter/material.dart';

class PayPage extends StatelessWidget {
  const PayPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pay Page'), centerTitle: true),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('*working on it*'),
            ]
          ),
        ],
      )
    );
  }
}
