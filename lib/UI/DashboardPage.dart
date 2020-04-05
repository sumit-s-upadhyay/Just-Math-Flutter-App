import 'package:flutter/material.dart';
import 'package:just_math/UI/HomePage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.60,
            width: MediaQuery.of(context).size.width * 0.70,
            alignment: Alignment.center,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 8.0,
              children: <Widget>[
                // Addition Button
                MaterialButton(
                    onPressed: () {
                      debugPrint("Additon");
                      Navigator.push(
                          context, 
                          MaterialPageRoute(
                              builder: (context) => HomePage("Additon")));
                    },
                    child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.iconsdb.com/icons/preview/red/plus-2-xxl.png"))),

                // Subtraction Button
                MaterialButton(
                    onPressed: () {
                      debugPrint("Subtraction");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage("Subtraction")));
                    },
                    child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.iconsdb.com/icons/preview/red/minus-7-xxl.png"))),

                // Multiplication Button
                MaterialButton(
                    onPressed: () {
                      debugPrint("Multiplication");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomePage("Multiplication")));
                    },
                    child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.iconsdb.com/icons/preview/red/multiply-2-xxl.png"))),

                // Divison Button
                MaterialButton(
                    onPressed: () {
                      debugPrint("Divison");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage("Divison")));
                    },
                    child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.iconsdb.com/icons/preview/red/divide-sign-xxl.png"))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
