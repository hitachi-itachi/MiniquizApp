import 'package:flutter/material.dart';
import 'package:miniquizapp/Characterpages/Dentist.dart';
import 'package:miniquizapp/Characterpages/Jong.dart';
import 'package:miniquizapp/Characterpages/Um.dart';
import 'package:miniquizapp/Characterpages/byuen.dart';
import 'package:miniquizapp/Characterpages/hong.dart';

class character extends StatelessWidget {
  const character({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          "Character: Click the Boxes to\n find out more about them!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Color.fromARGB(255, 106, 39, 200),
            ),
          ),
          Positioned(
            left: 10, // Adjust the left position for the first container
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 200,
              color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: double.infinity,
                      height: 150,
                      color: Colors.red,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Um()));
                        },
                        child: Image.asset(
                          "images/um.png",
                          fit: BoxFit.cover,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Ms um",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 10, // Adjust the left position for the second container
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 200,
              color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.red,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dentist()));
                        },
                        child: Image.asset(
                          "images/dentist.jpg",
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "The Dentist",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 10,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 200,
              color: Colors.orange,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.red,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => hong()));
                      },
                      child: Image.asset(
                        "images/Hong.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Hong Nam Bok",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ]),
            ),
          ),
          Positioned(
            top: 250,
            left: MediaQuery.of(context).size.width * 0.55,
            right: 10,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 200,
              color: Colors.orange,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.red,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Jong()));
                    },
                    child: Image.asset(
                      "images/jong.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Jong U",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Positioned(
            top: 495,
            left: MediaQuery.of(context).size.width * 0.30,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 200,
              color: Colors.orange,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.red,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => byuen()));
                      },
                      child: Image.asset(
                        "images/byuen.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Byuen",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
