import 'dart:ui';

import 'package:flutter/material.dart';

class Dentist extends StatelessWidget {
  const Dentist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Seo Moon Jun",
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
                  "images/dentist.jpg",
                  fit: BoxFit.fitHeight,
                ),
              )),
          Positioned(
              top: 240,
              left: 10,
              right: 10,
              child: Container(
                height: 500,
                width: double.infinity,
                child: Text(
                    "Seo Moon-jo is a charismatic, psychotic killer with a chilling dual identity as a dentist. Beneath his charming facade lies a twisted mind, adept at manipulating others. Moon-jo's unsettling charm masks his sinister nature, allowing him to seamlessly blend into society while orchestrating his malevolent deeds. As a skilled dentist, he uses his profession as a guise, concealing his darker intentions. \n\nHis charismatic persona draws people in, but behind closed doors, he embodies a dangerous psychopath, manipulating and inflicting harm without remorse, driven by a disturbing inner compulsion. Moon-jo is a haunting blend of charm and psychosis.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              )),
        ]));
  }
}
