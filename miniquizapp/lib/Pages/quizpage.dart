import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class quizPage extends StatefulWidget {
  const quizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<quizPage> {
  Color buttonColor =
      Color.fromARGB(255, 250, 250, 250); // Initial color of the button
  Color button1Color = Colors.white;
  bool showFloatingButton = false;

  void changeColor() {
    setState(() {
      // Change button color when tapped
      buttonColor = Colors.green; // Change this to the desired color
      button1Color = Colors.red;
      showFloatingButton = true;
    });
  }

  FloatingActionButton nextButton() {
    return FloatingActionButton(
      child: Text('Next', style: TextStyle(fontSize: 20.0)),
      backgroundColor: Colors.blue,
      onPressed: () {
        // Add your onPressed logic here
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Question 1: What animal is this?",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        floatingActionButton: Visibility(
          visible: showFloatingButton,
          child: FloatingActionButton(
            child: Text('Next', style: TextStyle(fontSize: 20.0)),
            backgroundColor: Colors.blue,
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
        ),
        body: Stack(children: [
          Container(
            color: Color.fromARGB(59, 139, 135, 135),
          ),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 200,
                  width: 410,
                  child: Image.asset(
                    "images/teddy.png",
                    fit: BoxFit.fitHeight,
                  ),
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
                      nextButton();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 300,
                      child: Text("Cow",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          )),
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
                    child: Text("Bear",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
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
                    child: Text("Dog",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
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
