import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/model/list_model.dart';
import 'package:shopapp/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage()
      )
    );
  }
}



