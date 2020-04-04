import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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


            MaterialButton(
              color: Colors.redAccent,
              height: 48.0, 
              minWidth: MediaQuery.of(context).size.width*0.60,
              onPressed: () {},
              child:Text("Eassy Lavel",
            style: TextStyle(
              fontSize: 27.0,
              color: Colors.white,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.5,
            ),
            ) ,
            ),

            MaterialButton(
              color: Colors.redAccent,
              height: 48.0,
               minWidth: MediaQuery.of(context).size.width*0.60,
              onPressed: () {},
              child:Text("Intermediate Lavel",
            style: TextStyle(
              fontSize: 27.0,
              color: Colors.white,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.5,
            ),
            ) ,
            ),

            MaterialButton(
              color: Colors.redAccent,
              height: 48.0, 
               minWidth: MediaQuery.of(context).size.width*0.60,
              onPressed: () {},
              child:Text("Advance Lavel",
            style: TextStyle(
              fontSize: 27.0,
              color: Colors.white, 
              fontWeight: FontWeight.w800,
              letterSpacing: 1.5,
            ),
            ) ,
            ),

            

          ],
        ),
      ),
      
    );
  }
}