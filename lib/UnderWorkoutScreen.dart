// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/WorkOutScreensUnderWeight/BenchPressWorkoutScreen.dart';
import 'package:project/WorkOutScreensUnderWeight/LungsWorkoutScreen.dart';
import 'package:project/WorkOutScreensUnderWeight/OverHeadWorkoutScreen.dart';
import 'package:project/WorkOutScreensUnderWeight/PullUpsWorkoutScree.dart';
import 'package:project/WorkOutScreensUnderWeight/PushUpsWorkoutScreen.dart';
import 'package:project/WorkOutScreensUnderWeight/SquatsWorkOutsScreenUnderWeight.dart';

class UnderWeightWorkOutsScreen extends StatefulWidget {
  const UnderWeightWorkOutsScreen({Key? key}) : super(key: key);

  @override
  State<UnderWeightWorkOutsScreen> createState() =>
      _UnderWeightWorkOutsScreen();
}

class _UnderWeightWorkOutsScreen extends State<UnderWeightWorkOutsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.black),
        home: Scaffold(
            body: ListView(children: [
          SafeArea(
              child: Container(
                  color: Color.fromARGB(255, 30, 29, 29),
                  padding: EdgeInsets.only(left: 24, top: 12),
                  height: 100,
                  width: 400,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(children: [
                    Text("Workouts",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 18, 78, 21),
                            fontSize: 38)),
                    SizedBox(
                      width: 120,
                    ),
                    Icon(
                      Icons.sports_gymnastics_sharp,
                      color: Colors.white,
                      size: 43,
                    )
                  ]))),
          Card(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
            color: Color.fromARGB(255, 34, 42, 84),
            shadowColor: Colors.amber,
            elevation: 21,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
              padding: EdgeInsets.only(left: 9, top: 2, bottom: 2),
              //margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.indigo, Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              height: 160,
              width: 160,
              child: Column(children: [
                Row(
                  children: [
                    Text(" Push ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("Ups! ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 44, 113, 46),
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Icon(
                      Icons.fitness_center_sharp,
                      color: Colors.green,
                      size: 32,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 4.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("  Build muscles in arms & shoulders.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 2.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 4.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("  In ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 110, 41),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("four ",
                        style: TextStyle(
                            color: Color.fromARGB(183, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("Weeks !!    ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 110, 41),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PushUpsWorkOutsUnderWeight()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 46, 129, 49),
                          onPrimary: Colors.black),
                      child: Text("Try"),
                    )
                  ],
                ),
              ]),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
            color: Color.fromARGB(255, 34, 42, 84),
            shadowColor: Colors.amber,
            elevation: 21,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
              padding: EdgeInsets.only(left: 9, top: 2, bottom: 2),
              //margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.indigo, Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              height: 160,
              width: 160,
              child: Column(children: [
                Row(
                  children: [
                    Text(" Pull ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("Ups! ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 44, 113, 46),
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Icon(
                      Icons.fitness_center_sharp,
                      color: Colors.green,
                      size: 32,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 4.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("  Build arm and shoulder muscles.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 2.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 4.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("  In ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 110, 41),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text(" 14 ",
                        style: TextStyle(
                            color: Color.fromARGB(183, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("Days !!        ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 110, 41),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PullUpsWorkOutsScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 46, 129, 49),
                          onPrimary: Colors.black),
                      child: Text("Try"),
                    )
                  ],
                ),
              ]),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
            color: Color.fromARGB(255, 34, 42, 84),
            shadowColor: Colors.amber,
            elevation: 21,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
              padding: EdgeInsets.only(left: 9, top: 2, bottom: 2),
              //margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.indigo, Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              height: 160,
              width: 160,
              child: Column(children: [
                Row(
                  children: [
                    Text(" Squats",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("! ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 44, 113, 46),
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Icon(
                      Icons.fitness_center_sharp,
                      color: Colors.green,
                      size: 32,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 4.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("  Build muscle in your butts and legs.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 2.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 4.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("  In ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 110, 41),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("30 ",
                        style: TextStyle(
                            color: Color.fromARGB(183, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("Days !!         ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 110, 41),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SquatsWorkOutsScreenUnderWeight()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 46, 129, 49),
                          onPrimary: Colors.black),
                      child: Text("Try"),
                    )
                  ],
                ),
              ]),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
            color: Color.fromARGB(255, 34, 42, 84),
            shadowColor: Colors.amber,
            elevation: 21,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
              padding: EdgeInsets.only(left: 9, top: 2, bottom: 2),
              //margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.indigo, Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              height: 160,
              width: 160,
              child: Column(children: [
                Row(
                  children: [
                    Text(" Lunges",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("! ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 44, 113, 46),
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Icon(
                      Icons.fitness_center_sharp,
                      color: Colors.green,
                      size: 32,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 4.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("Bulking up and toning your leg.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 2.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 4.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("  In ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 110, 41),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("30 ",
                        style: TextStyle(
                            color: Color.fromARGB(183, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("Days !!         ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 110, 41),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LungesWorkOutsScreensUnderWeights()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 46, 129, 49),
                          onPrimary: Colors.black),
                      child: Text("Try"),
                    )
                  ],
                ),
              ]),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
            color: Color.fromARGB(255, 34, 42, 84),
            shadowColor: Colors.amber,
            elevation: 21,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
              padding: EdgeInsets.only(left: 9, top: 2, bottom: 2),
              //margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.indigo, Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              height: 160,
              width: 160,
              child: Column(children: [
                Row(
                  children: [
                    Text(" Bench ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("Press! ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 44, 113, 46),
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Icon(
                      Icons.fitness_center_sharp,
                      color: Colors.green,
                      size: 32,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 4.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("Build shoulder,tricep & chest muscles.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            letterSpacing: 2.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 4.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("  In ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 110, 41),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("30 ",
                        style: TextStyle(
                            color: Color.fromARGB(183, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("Days !!         ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 110, 41),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BenchPressWorkOutScreenUnderWeight()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 46, 129, 49),
                          onPrimary: Colors.black),
                      child: Text("Try"),
                    )
                  ],
                ),
              ]),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
            color: Color.fromARGB(255, 34, 42, 84),
            shadowColor: Colors.amber,
            elevation: 21,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
              padding: EdgeInsets.only(left: 9, top: 2, bottom: 2),
              //margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.indigo, Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              height: 160,
              width: 160,
              child: Column(children: [
                Row(
                  children: [
                    Text(" Overhead ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            letterSpacing: 4.0)),
                    Text("Press! ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 44, 113, 46),
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            letterSpacing: 4.0)),
                    Icon(
                      Icons.fitness_center_sharp,
                      color: Colors.green,
                      size: 32,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 4.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("  Bulkup muscles in Back and Abs.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 2.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 4.0)),
                  ],
                ),
                Row(
                  children: [
                    Text("  In ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 110, 41),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("four ",
                        style: TextStyle(
                            color: Color.fromARGB(183, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("Weeks !!    ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 110, 41),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    OverheadPressWorkOutsScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 46, 129, 49),
                          onPrimary: Colors.black),
                      child: Text("Try"),
                    )
                  ],
                ),
              ]),
            ),
          ),
        ])));
  }
}
