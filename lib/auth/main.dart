import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Login.dart';

void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:AppBarTheme(
backgroundColor: Colors.orange          ),
          primaryColor: Colors.orange),
      home: LoginPage(),
    );
  }
}
