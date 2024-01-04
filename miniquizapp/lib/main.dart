import 'package:flutter/material.dart';
import 'package:miniquizapp/Pages/homePage.dart';
import 'package:miniquizapp/Pages/teddyquiz.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
