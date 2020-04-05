import 'dart:math';

import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  final n, m, operatortext;
  QuestionPage(this.n, this.m, this.operatortext);
  @override
  _QuestionPageState createState() =>
      _QuestionPageState(this.n, this.m, this.operatortext);
}

class _QuestionPageState extends State<QuestionPage> {
  _QuestionPageState(this.n, this.m, this.operatortext);
  int n, m;
  String operatortext;
  int firstNumber = 0, secondNumber = 0;
  int thirdNumber = 0, fourthNumber = 0;
  int count = 0;

  randomNumber() {
    firstNumber = Random().nextInt(m);
    secondNumber = Random().nextInt(m);
    thirdNumber = Random().nextInt(m);
    fourthNumber = Random().nextInt(m);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            operatortext == "Additon"
                ? Text("$firstNumber + $secondNumber")
                : Text(""),
            operatortext == "Subtraction"
                ? Text("$firstNumber - $secondNumber")
                : Text(""),
            operatortext == "Multiplication"
                ? Text("$firstNumber X $secondNumber")
                : Text(""),
            operatortext == "Divison"
                ? Text("$firstNumber / $secondNumber")
                : Text(""),
            MaterialButton(
                color: count == 0 ? Colors.red : Colors.green,
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: (operatortext == "Additon")
                    ? (Text("${firstNumber + secondNumber}"))
                    : (operatortext == "Subtraction")
                        ? (Text("${firstNumber - secondNumber}"))
                        : (operatortext == "Multiplication")
                            ? (Text("${firstNumber * secondNumber}"))
                            : (operatortext == "Divison")
                                ? (Text("${firstNumber / secondNumber}"))
                                : Text("")),
            MaterialButton(
                color: Colors.deepOrangeAccent,
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                },
                child: Text("Click Here"))
          ],
        ),
      ),
    );
  }
}
