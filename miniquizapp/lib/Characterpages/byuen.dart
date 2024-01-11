import 'dart:ui';

import 'package:flutter/material.dart';

class byuen extends StatelessWidget {
  const byuen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Byuen",
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
                  "images/byuen.jpg",
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
                    "Byuen, grappling with autism, harbors a chilling penchant for killing cats for amusement. Despite his condition, his disturbing inclination aligns with that of a psychopath. His perplexing duality — the juxtaposition of a neurodevelopmental disorder and cruel actions — paints a troubling portrait of a mind entangled in darkness.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              )),
        ]));
  }
}
