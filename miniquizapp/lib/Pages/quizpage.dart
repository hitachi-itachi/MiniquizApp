import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class quizPage extends StatefulWidget {
  const quizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<quizPage> {
  Color buttonColor = Colors.white; // Initial color of the button
  Color button1Color = Colors.white;

  void changeColor() {
    setState(() {
      // Change button color when tapped
      buttonColor = Colors.green; // Change this to the desired color
      button1Color = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Quiz app"),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: Stack(children: [
          Container(
            color: Colors.orange,
          ),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 200,
                  width: 410,
                  child: Text("Hello World"),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 250,
              left: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      changeColor();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 300,
                      child: Text("Hello World"),
                      decoration: BoxDecoration(
                        color: button1Color,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  // Add other widgets if needed here separated by commas
                ],
              )),
          Positioned(
            top: 400,
            left: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    changeColor(); // Call function to change color on tap
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 300,
                    child: Text("Hello World"),
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                // Add other widgets if needed here separated by commas
              ],
            ),
          ),
          Positioned(
            top: 550,
            left: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    changeColor();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 300,
                    child: Text("Hello World"),
                    decoration: BoxDecoration(
                      color: button1Color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                // Add other widgets if needed here separated by commas
              ],
            ),
          )
        ]));
  }
}
