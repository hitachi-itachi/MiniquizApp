import 'dart:ui';

import 'package:flutter/material.dart';

class hong extends StatelessWidget {
  const hong({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hong Nam Bok",
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
              colors: [Color.fromARGB(255, 137, 98, 220), Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
            )),
          ),
          Positioned(
              top: 10,
              child: Container(
                height: 200,
                width: 410,
                child: Image.asset(
                  "images/Hong.jpg",
                  fit: BoxFit.fitHeight,
                ),
              )),
          Positioned(
              top: 250,
              left: 10,
              right: 10,
              child: Container(
                height: 500,
                width: double.infinity,
                child: Text(
                    "Hong Nam Bok, tainted by a sexual assault accusation, faced a failed business venture. His unsettling psyche unraveled a hidden psychopathic nature. The stain of allegations and financial ruin marred his existence, fostering a disturbingly troubled soul, shrouded in the shadows of his shattered aspirations and inner turmoil.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              )),
        ]));
  }
}
