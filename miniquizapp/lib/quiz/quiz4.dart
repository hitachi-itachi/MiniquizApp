import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:miniquizapp/quiz/endPage.dart';
import 'package:miniquizapp/quiz/quiz2.dart';
import 'package:miniquizapp/quiz/quiz2.dart';
import 'package:miniquizapp/quiz/quiz5.dart';
import 'package:miniquizapp/quiz/teddyquiz.dart';
import 'package:miniquizapp/quiz/teddyquiz.dart';
import 'package:miniquizapp/quiz/teddyquiz.dart';

import 'teddyquiz.dart';

class quiz4 extends StatefulWidget {
  final int counter;
  final int counter1;
  final int counter2counter2;

  const quiz4({
    Key? key,
    required this.counter,
    required this.counter1,
    required this.counter2counter2,
  }) : super(key: key);
  @override
  _QuizPageState createState() => _QuizPageState();
}
/*
int counter = 0;

class ButtonController extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;
  //bool _isButtonClicked = false;

  //bool get isButtonClicked => _isButtonClicked;

  void onTap() {
    _counter++;
    notifyListeners();
  }
}
*/

class _QuizPageState extends State<quiz4> {
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
        //Navigator.push(
        //  context, MaterialPageRoute(builder: (context) => EndPage()));
        // Add your onPressed logic here
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Text("Question 4: You get angry easily.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 106, 39, 200),
        ),
        floatingActionButton: Visibility(
          visible: showFloatingButton,
          child: FloatingActionButton(
            child: Text('Next', style: TextStyle(fontSize: 20.0)),
            backgroundColor: Colors.blue,
            onPressed: () {
              //Navigator.push(
              //context, MaterialPageRoute(builder: (context) => EndPage(key: ,))));
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
                    "images/angry.png",
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
                      int one = widget.counter1;
                      one++;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => quiz5(
                                    counter2counter2: widget.counter2counter2,
                                    counter: widget.counter,
                                    counter1: one,
                                  ))); // Ca
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 300,
                      child: Text("Agree",
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
                    // _count.onTap();
                    changeColor();
                    int second = widget.counter;
                    second++;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => quiz5(
                                  counter2counter2: widget.counter2counter2,
                                  counter: second,
                                  counter1: widget.counter1,
                                ))); // Call function to change color on tap
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 300,
                    child: Text("Neutral",
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
                    nextButton();
                    int two = widget.counter2counter2;
                    two++;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => quiz5(
                                  counter2counter2: two,
                                  counter1: widget.counter1,
                                  counter: widget.counter,
                                ))); //// Call fun
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 300,
                    child: Text("Disagree",
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
