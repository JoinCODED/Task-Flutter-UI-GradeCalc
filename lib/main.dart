import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle gradeTextStyle =
        TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
    final Color purple = Color(0xff7c7ded);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center, // <- Here
          children: [
            Text(
              "Grade Calculator",
              style: TextStyle(
                  color: purple, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Color(0xff7c7ded),
                ),
                borderRadius: BorderRadius.circular(40),
              ),
              height: 300,
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Math:",
                        style: gradeTextStyle,
                      ),
                      Text(
                        "A",
                        style: gradeTextStyle,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Physics:",
                        style: gradeTextStyle,
                      ),
                      Text(
                        "B",
                        style: gradeTextStyle,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chemistry:",
                        style: gradeTextStyle,
                      ),
                      Text(
                        "C",
                        style: gradeTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff7c7ded),
              ),
              child: Text(
                "Calculate",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
