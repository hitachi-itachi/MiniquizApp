import 'package:flutter/material.dart';
import 'package:miniquizapp/Pages/Sypnosis.dart';
import 'package:miniquizapp/Pages/teddyquiz.dart';
import 'package:miniquizapp/Pages/Character.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(247, 96, 5, 112),
          ),
          Positioned(
              child: Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.white,
                  child: Image.asset(
                    "images/strangers-from-hell-netflix-review.jpg",
                    fit: BoxFit.fill,
                  ))),
          Positioned(
            top: 250,
            left: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sypnosis()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 300,
                    child: Text("Sypnosis",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                // Add other widgets if needed here separated by commas
              ],
            ),
          ),
          Positioned(
            top: 420,
            left: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => character()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 300,
                    child: Text("Characters",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                // Add other widgets if needed here separated by commas
              ],
            ),
          ),
          Positioned(
            top: 590,
            left: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => quizPage()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 300,
                    child: Text("Quiz",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                // Add other widgets if needed here separated by commas
              ],
            ),
          )
        ],
      ),
    );
  }
}
