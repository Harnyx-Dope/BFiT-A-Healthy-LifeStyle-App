// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables, unused_label

import 'package:flutter/material.dart';
import 'package:project/WorkOutScreensObese/CyclingWorkoutScreen.dart';
import 'package:project/WorkOutScreensObese/LiftingWeightWorkoutScreen.dart';
import 'package:project/WorkOutScreensObese/StretchingWorkoutScreen.dart';
import 'package:project/WorkOutScreensObese/SwimmingWorkoutScreens.dart';

class ObeseWorkOutScreen extends StatefulWidget {
  const ObeseWorkOutScreen({Key? key}) : super(key: key);

  @override
  State<ObeseWorkOutScreen> createState() => _ObeseWorkOutScreenState();
}

class _ObeseWorkOutScreenState extends State<ObeseWorkOutScreen> {
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
                    SizedBox(width: 120),
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
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Row(
                  children: [
                    Text(" Lift ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("Weights",
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
                    Text("Gain: Metabolism and Bone Density.",
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
                                builder: (context) => LiftingWeightsObese()));
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
                    Text(" Swimming ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("",
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
                    Text("Builds Endurance & Muscle Strength",
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
                    Text("14 ",
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
                                builder: (context) => SwimmingObese()));
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
                    Text("  Cycling ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("",
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
                    Text("  Improve Your Heart and Lungs.",
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
                    Text("thirty ",
                        style: TextStyle(
                            color: Color.fromARGB(183, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("Days !!    ",
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
                                builder: (context) => CyclingObeseExercises()));
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
                    Text("  Stretching ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("",
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
                    Text(" Boost flexibility and Range Of Motion.",
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
                    Text("thirty ",
                        style: TextStyle(
                            color: Color.fromARGB(183, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("Days !!    ",
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
                                    StretchingObeseWorkoutScreen()));
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
