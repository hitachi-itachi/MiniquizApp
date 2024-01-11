import 'package:flutter/material.dart';
import 'package:miniquizapp/Pages/quiz2.dart';
import 'package:miniquizapp/Pages/teddyquiz.dart';

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
  //late ButtonController _count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        child: Text(
          '${widget.counter}', // Use widget.counter instead of _count
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
