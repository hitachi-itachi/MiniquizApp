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
                    "Yoon Jong-woo (Im Shi-wan) a young guy in his 20s moves from the countryside to Seoul after getting a job offer.\n\nNot being from a rich household,he looks for a cheap place to rent and stumbles upon Eden Studio, a hostel that shares its kitchen and bathroom with other problematic and abnormal residents.\n\n He is not happy about his residence but decides to put up with it for 6 months until he saves enough money to move out. But when disturbing events start taking place in the hostel, he soon realizes that he unknowingly got trapped in a nightmare.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              )),
        ]));
  }
}
