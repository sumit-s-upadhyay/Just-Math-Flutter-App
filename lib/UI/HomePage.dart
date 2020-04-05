import 'package:flutter/material.dart';
import 'package:just_math/UI/QuestionPage.dart';

class HomePage extends StatefulWidget {
  final operatortext;
  HomePage(this.operatortext);

  @override
  _HomePageState createState() => _HomePageState(this.operatortext);
}

class _HomePageState extends State<HomePage> {
  var operatortext;
  _HomePageState(this.operatortext);

  checklevel(String text) { 
    switch (text) {
      case "Eassy Lavel":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => QuestionPage(1, 10,operatortext)));
        break;

      case "Intermediate Lavel":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => QuestionPage(11, 99,operatortext)));
        break; 

      case "Advance Lavel":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => QuestionPage(101, 999,operatortext)));
        break;

      case "Expert Lavel":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => QuestionPage(1001, 10000,operatortext)));
        break;
    }
  }

  Widget customButton(var text) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      color: Colors.redAccent,
      height: MediaQuery.of(context).size.height * 0.060,
      minWidth: MediaQuery.of(context).size.width * 0.70,
      onPressed: () {
        debugPrint(text);
        checklevel(text);
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 27.0,
          color: Colors.white,
          fontWeight: FontWeight.w800,
          letterSpacing: 1.5,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Just Math"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            customButton("Eassy Lavel"),
            customButton("Intermediate Lavel"),
            customButton("Advance Lavel"),
            customButton("Expert Lavel"),
          ],
        ),
      ),
    );
  }
}
