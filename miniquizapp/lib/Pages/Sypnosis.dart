import 'dart:ui';

import 'package:flutter/material.dart';

class Sypnosis extends StatelessWidget {
  const Sypnosis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sypnosis",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
            )),
          ),
          Positioned(
              child: Container(
            height: 200,
            width: 410,
            child: Image.asset(
              "images/sypnosis.jpeg",
              fit: BoxFit.fill,
            ),
          ))
        ]));
  }
}
