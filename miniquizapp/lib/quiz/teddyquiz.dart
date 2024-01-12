import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:miniquizapp/quiz/endPage.dart';
import 'package:miniquizapp/quiz/quiz2.dart';

class quizPage extends StatefulWidget {
  const quizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();

  void onTap() {}
}

int counter = 0;
int counter2 = 0;

class ButtonController extends ChangeNotifier {
  int _counter = 0;
  int _counter1 = 0;
  int _counter2 = 0;

  int get counter => _counter;
  int get counter1 => _counter1;
  int get counter2 => _counter2;
  //bool _isButtonClicked = false;

  //bool get isButtonClicked => _isButtonClicked;
//third button
  void onTap2() {
    _counter2++;
    notifyListeners();
  }

//first button
  void onTap1() {
    _counter1++;
    notifyListeners();
  }

//second button
  void onTap() {
    _counter++;
    notifyListeners();
  }
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
        /*
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => quizPage2()));
            */
        // Add your onPressed logic here
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final ButtonController _count = ButtonController();
    final ButtonController _count1 = ButtonController();
    final ButtonController _count2 = ButtonController();
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Text("Question 1: You love your \nsteak rare.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => quiz2(
                            counter2counter2: _count2.counter2,
                            counter: _count.counter,
                            counter1: _count1._counter1,
                          )));
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
                    "images/steak.png",
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
                      // _count1.onTap1();
                      changeColor();
                      nextButton();
                      int one = _count1.counter1;
                      one++;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => quiz2(
                                    counter2counter2: _count2.counter2,
                                    counter1: one,
                                    counter: _count.counter,
                                  ))); //// Call fun
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
                    _count.onTap();
                    changeColor();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => quiz2(
                                  counter2counter2: _count2.counter2,
                                  counter1: _count1.counter1,
                                  counter: _count.counter,
                                ))); //// Call function to change color on tap
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
                    //_count2.onTap2();
                    changeColor();
                    nextButton();
                    int two = _count2.counter2;
                    two++;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => quiz2(
                                  counter2counter2: two,
                                  counter1: _count.counter1,
                                  counter: _count.counter,
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
