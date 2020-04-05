import 'dart:async';
import 'dart:math';
import 'package:quiver/async.dart';
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
  int marks = 0;
  int finalTimer = 60;
  int randomque, reSetNumber;

  randomNumber() {
    firstNumber = Random().nextInt(m);
    secondNumber = Random().nextInt(m);
    thirdNumber = Random().nextInt(m);
    fourthNumber = Random().nextInt(m);
    randomque = Random().nextInt(3);
    print(randomque);
    if (firstNumber == secondNumber ||
        firstNumber == thirdNumber ||
        firstNumber == fourthNumber) {
      reSetNumber = Random().nextInt(m);
      firstNumber = reSetNumber;
    } else if (secondNumber == thirdNumber || secondNumber == fourthNumber) {
      reSetNumber = Random().nextInt(m);
      secondNumber = reSetNumber;
    } else if (thirdNumber == fourthNumber ||
        firstNumber == thirdNumber ||
        firstNumber == fourthNumber) {
      reSetNumber = Random().nextInt(m);
      thirdNumber = reSetNumber;
    }
  }

  timerChecker() async {
    new CountdownTimer(new Duration(minutes: 1), new Duration(seconds: 1))
        .listen((data) {
      print('Something');
      print('Remaining time: ${data.remaining.inSeconds}');
      setState(() {
        finalTimer = data.remaining.inSeconds;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    randomNumber();
    timerChecker();
  }

  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  checkanswer() {
    //TODO:
    /* 
    1) Check answer
    //  2) show randomly answer list
     3) Change color for correct and wrong answer
     4) show next question
     5) show result according to mark
    */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            operatortext == "Additon"
                ? Text(
                    "$firstNumber + $secondNumber",
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2,
                    ),
                  )
                : Text(""),
            operatortext == "Subtraction"
                ? Text(
                    "$firstNumber - $secondNumber",
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2,
                    ),
                  )
                : Text(""),
            operatortext == "Multiplication"
                ? Text(
                    "$firstNumber X $secondNumber",
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2,
                    ),
                  )
                : Text(""),
            operatortext == "Divison"
                ? Text(
                    "$firstNumber / $secondNumber",
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2,
                    ),
                  )
                : Text(""),

            // First Buttton Choice
            MaterialButton(
                height: 50,
                minWidth: 280,
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    checkanswer();
                  });
                },
                child: (operatortext == "Additon")
                    ? (randomque == 1
                        ? Text("${firstNumber + secondNumber}")
                        : Text("${firstNumber + thirdNumber}"))
                    : (operatortext == "Subtraction")
                        ? (randomque == 1
                            ? Text("${firstNumber - secondNumber}")
                            : Text("${firstNumber - thirdNumber}"))
                        : (operatortext == "Multiplication")
                            ? (randomque == 1
                                ? Text("${firstNumber * secondNumber}")
                                : Text("${firstNumber * thirdNumber}"))
                            : (operatortext == "Divison")
                                ? (randomque == 1
                                    ? Text("${firstNumber / secondNumber}")
                                    : Text("${firstNumber / thirdNumber}"))
                                : Text("")),

            // Second Buttton Choice
            MaterialButton(
                height: 50,
                minWidth: 280,
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    checkanswer();
                  });
                },
                child: (operatortext == "Additon")
                    ? (randomque == 2
                        ? Text("${firstNumber + secondNumber}")
                        : Text("${firstNumber + fourthNumber}"))
                    : (operatortext == "Subtraction")
                        ? (randomque == 2
                            ? Text("${firstNumber - secondNumber}")
                            : Text("${firstNumber - fourthNumber}"))
                        : (operatortext == "Multiplication")
                            ? (randomque == 2
                                ? Text("${firstNumber * secondNumber}")
                                : Text("${firstNumber * fourthNumber}"))
                            : (operatortext == "Divison")
                                ? (randomque == 2
                                    ? Text("${firstNumber / secondNumber}")
                                    : Text("${firstNumber / fourthNumber}"))
                                : Text("")),

            // third Buttton Choice
            MaterialButton(
                height: 50,
                minWidth: 280,
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    checkanswer();
                  });
                },
                child: (operatortext == "Additon")
                    ? (randomque == 3
                        ? Text("${firstNumber + secondNumber}")
                        : Text("${secondNumber + thirdNumber}"))
                    : (operatortext == "Subtraction")
                        ? (randomque == 3
                            ? Text("${firstNumber - secondNumber}")
                            : Text("${secondNumber - thirdNumber}"))
                        : (operatortext == "Multiplication")
                            ? (randomque == 2
                                ? Text("${firstNumber * secondNumber}")
                                : Text("${secondNumber * thirdNumber}"))
                            : (operatortext == "Divison")
                                ? (randomque == 2
                                    ? Text("${firstNumber / secondNumber}")
                                    : Text("${secondNumber / fourthNumber}"))
                                : Text("")),

            // fourth Buttton Choice
            MaterialButton(
                height: 50,
                minWidth: 280,
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    checkanswer();
                  });
                },
                child: (operatortext == "Additon")
                    ? (randomque == 0
                        ? Text("${firstNumber + secondNumber}")
                        : Text("${thirdNumber + fourthNumber}"))
                    : (operatortext == "Subtraction")
                        ? (randomque == 0
                            ? Text("${firstNumber - secondNumber}")
                            : Text("${thirdNumber - fourthNumber}"))
                        : (operatortext == "Multiplication")
                            ? (randomque == 0
                                ? Text("${firstNumber * secondNumber}")
                                : Text("${thirdNumber * fourthNumber}"))
                            : (operatortext == "Divison")
                                ? (randomque == 0
                                    ? Text("${firstNumber / secondNumber}")
                                    : Text("${thirdNumber / fourthNumber}"))
                                : Text("")),

            Text(
              "$finalTimer",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
