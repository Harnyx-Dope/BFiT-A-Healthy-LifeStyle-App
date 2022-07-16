// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/WorkOutScreenHealthy/BellyFatWorkOutsScreen.dart';
import 'package:project/WorkOutScreenHealthy/BigArmsWorkOutsScreen.dart';
import 'package:project/WorkOutScreenHealthy/BiggerBackWorkOutsScreen.dart';
import 'package:project/WorkOutScreenHealthy/BiggerChestWorkOutsScreen.dart';
import 'package:project/WorkOutScreenHealthy/BiggerNeckWorkOutsScreenhealthy.dart';
import 'package:project/WorkOutScreenHealthy/ChickenLegWorkOutsScreen.dart';
import 'package:project/WorkOutScreenHealthy/IncreaseHeightWorkOutsScreen.dart';

class CardDesignPractice extends StatefulWidget {
  const CardDesignPractice({Key? key}) : super(key: key);

  @override
  State<CardDesignPractice> createState() => _CardDesignPracticeState();
}

class _CardDesignPracticeState extends State<CardDesignPractice> {
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
                    SizedBox(width: 100),
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
              width: MediaQuery.of(context).size.width,

              padding: EdgeInsets.only(left: 9, top: 2, bottom: 2),
              //margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.indigo, Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),

              child: Column(children: [
                Row(
                  children: [
                    Text(" Big ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("Arms! ",
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
                    Text("  For: Imbalanced biceps and triceps.",
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
                                builder: (context) => BigArmsScreen()));
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
              width: MediaQuery.of(context).size.width,

              child: Column(children: [
                Row(
                  children: [
                    Text(" Belly ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("Fat! ",
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
                    Text("  Prevent: Diabetes & High Cholestrol.",
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
                    Text("14 ",
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
                                    BellyFatWorkOutsHealthy()));
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
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Row(
                  children: [
                    Text(" Bigger ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("Chest! ",
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
                    Text("  Prevent: Angina and Aortic Dissection.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
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
                                    BiggerChestWorkOutsScreenHealthy()));
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
                    Text(" Bigger ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("Back! ",
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
                    Text("No Back Pain and Increase Metabolism.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
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
                                    BiggerBackWorkOutsScreen()));
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
                    Text("Increase ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 4.0)),
                    Text("Height!",
                        style: TextStyle(
                            color: Color.fromARGB(255, 44, 113, 46),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
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
                    Text("  Prevent:Blood Clot and Heatstroke.",
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
                                builder: (context) =>
                                    IncreaseHeightWorkOutsScreenHealthy()));
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
                    Text(" Chicken ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 33,
                            letterSpacing: 4.0)),
                    Text("Legs! ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 44, 113, 46),
                            fontWeight: FontWeight.bold,
                            fontSize: 33,
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
                    Text("Injuries and Manage Chronic Conditions.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
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
                                    ChickenLegsWorkOutsScreenHealthy()));
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
                    Text(" Bigger ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            letterSpacing: 4.0)),
                    Text("Neck! ",
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
                    Text("  Prevent: Cervical Spine Injuries.",
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
                    Text("five ",
                        style: TextStyle(
                            color: Color.fromARGB(183, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 2.0)),
                    Text("Weeks !!   ",
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
                                    BiggerNeckWorkOutsScreenHealthy()));
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
