import 'package:flutter/material.dart';
import 'package:miniquizapp/Pages/homePage.dart';

class EndPage extends StatefulWidget {
  final int counter;
  final int counter1;
  final int counter2counter2;

  const EndPage({
    Key? key,
    required this.counter,
    required this.counter1,
    required this.counter2counter2,
  }) : super(key: key);

  @override
  _EndPageState createState() => _EndPageState();
}

class _EndPageState extends State<EndPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Result",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.deepPurpleAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (widget.counter1 >= 3)
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('images/Hong.jpg', height: 400, width: 400),
                    Text(
                      "You got Hong Nam Bok",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        " \nA Pervetic psychotic killer who has a serious porn addiction. His room smells like 10,000 bodies have decomposed in there. Loves killing and torturing cats as a hobby.",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          letterSpacing: 0.5,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20),
                        width: 200,
                        height: 100,
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homePage()));
                          },
                          child: Text("Back to home"),
                        )),
                  ],
                ),
              if (widget.counter2counter2 >= 3)
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('images/dentist.jpg', height: 400, width: 400),
                    Text(
                      "You got the Dentist",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        " \n Flowery on the outside, cold on the inside. That is the best explanation for the dentist. You seem so innocent but I know deep down you are a dark bastard.",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          letterSpacing: 0.5,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20),
                        width: 200,
                        height: 100,
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homePage()));
                          },
                          child: Text("Back to home"),
                        )),
                  ],
                ),
              if (widget.counter >= 3)
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('images/jong.jpeg', height: 400, width: 400),
                    Text(
                      "You got Jong-U",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        " \n You came to Seoul for a better life. You wanted to lead a normal life, but things took a sharp turn. You think you were the victim but are you?",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          letterSpacing: 0.5,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20),
                        width: 200,
                        height: 100,
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homePage()));
                          },
                          child: Text("Back to home"),
                        )),
                  ],
                ),
              if (widget.counter2counter2 == 2 &&
                      widget.counter1 == 1 &&
                      widget.counter == 2 ||
                  widget.counter2counter2 == 1 &&
                      widget.counter1 == 2 &&
                      widget.counter == 2 ||
                  widget.counter2counter2 == 2 &&
                      widget.counter1 == 2 &&
                      widget.counter == 1)
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('images/teddy.png', height: 400, width: 400),
                    Text(
                      "You got Teddy",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        " \n You are not here not there, haiz...so here you go a small teddy",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          letterSpacing: 0.5,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20),
                        width: 200,
                        height: 100,
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homePage()));
                          },
                          child: Text("Back to home"),
                        )),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
