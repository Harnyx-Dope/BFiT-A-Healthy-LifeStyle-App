// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/ClorFilter.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/BenchPressWorkout.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/DeadLiftWannatry.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/Dips.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/PowerCleanWannaTry.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/Pull-ups.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/RowsWannatry.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/SquatsLiftingWeightWannatry.dart';

class LiftingWeightsObese extends StatefulWidget {
  const LiftingWeightsObese({Key? key}) : super(key: key);

  @override
  State<LiftingWeightsObese> createState() => _LiftingWeightsObese();
}

class _LiftingWeightsObese extends State<LiftingWeightsObese> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(244, 255, 255, 255)),
        home: Scaffold(
          body: ListView(children: [
            SafeArea(
                child: Container(
                    color: Colors.black,
                    padding: EdgeInsets.only(left: 24, top: 12),
                    height: 100,
                    width: 400,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(children: [
                      Text("Lifting Weights",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 38)),
                      SizedBox(width: 25),
                      Icon(
                        Icons.sports_gymnastics_sharp,
                        color: Colors.white,
                        size: 43,
                      )
                    ]))),
            Card(
                clipBehavior: Clip.antiAlias,
                shadowColor: Colors.black,
                elevation: 32,
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Column(children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Ink.image(
                        image: AssetImage('images/SquatsObese.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 340,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Squats",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "The squat is one of the most efficient exercises for a total-body workout. It focuses primarily on the lower-body with the front squat variation focusing on the quadriceps and the back squat variation focusing on the glutes and hamstring. The exercise can be performed with a barbell, dumbbells or your own bodyweight..",
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.indigo)),
                  ),
                  SizedBox(height: 8),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SquatsLiftingWeightWannatry()));
                        },
                        child: Text("Wanna Try?",
                            style: TextStyle(color: Colors.green)),
                      )
                    ],
                  )
                ])),

            //-------------Second Card------------
            Card(
                clipBehavior: Clip.antiAlias,
                shadowColor: Colors.black,
                elevation: 32,
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Column(children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Ink.image(
                        image: AssetImage('images/BenchPressObese.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 240,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Bench-Press",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Perhaps the most prevalent exercise in the gym, the bench press is the best exercise for a full-chest workout. The exercise can be performed with a barbell on a bench, dumbbells on a bench, on machines or even on a Swiss ball for added resistance to your movement. Variations include a standard bench press, incline press and decline press among others..",
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.indigo)),
                  ),
                  SizedBox(height: 8),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BenchPressWorkout()));
                        },
                        child: Text("Wanna Try?",
                            style: TextStyle(color: Colors.green)),
                      )
                    ],
                  )
                ])),

            //---------Third Card---------
            Card(
                clipBehavior: Clip.antiAlias,
                shadowColor: Colors.black,
                elevation: 32,
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Column(children: [
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Ink.image(
                        image: AssetImage('images/DeadLiftObese.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 240,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text("Deadlift",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "The deadlift, like the squat, is another exercise that works your entire body while focusing on the entire core. By performing this exercise with a barbell, you will be able to gain strength in your lower back and perform other exercises with heavier weights..",
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.indigo)),
                  ),
                  SizedBox(height: 8),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DeadLiftWannatry()));
                        },
                        child: Text("Wanna Try?",
                            style: TextStyle(color: Colors.green)),
                      )
                    ],
                  )
                ])),

            //---------------Fourth Card------------
            Card(
                clipBehavior: Clip.antiAlias,
                shadowColor: Colors.black,
                elevation: 32,
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Column(children: [
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Ink.image(
                        image: AssetImage('images/PowerCleanObese.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 540,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Power-Clean",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "The power clean is similar to the deadlift, but is performed with much less weight. It focuses on the lower body, back and deltoids. While it used to be performed with a barbell, most trainers today incorporate kettlebells for maximum movement in your workout.",
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.indigo)),
                  ),
                  SizedBox(height: 8),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PowerCleanWannaTry()));
                        },
                        child: Text("Wanna Try?",
                            style: TextStyle(color: Colors.green)),
                      )
                    ],
                  )
                ])),

            //------------FiFth Card---------------
            Card(
                clipBehavior: Clip.antiAlias,
                shadowColor: Colors.black,
                elevation: 32,
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Column(children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Ink.image(
                        image: AssetImage('images/RowsObese.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 140,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text("Rows",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "In order to work your back even further, bent-over rows should be incorporated into your workout. You can perform these two-handed with a barbell or one-handed with dumbbells.",
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.indigo)),
                  ),
                  SizedBox(height: 8),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RowWannaTry()));
                        },
                        child: Text("Wanna Try?",
                            style: TextStyle(color: Colors.green)),
                      )
                    ],
                  )
                ])),

            //-------------Sixth Card-----------
            Card(
                clipBehavior: Clip.antiAlias,
                shadowColor: Colors.black,
                elevation: 32,
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Column(children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Ink.image(
                        image: AssetImage('images/PullUpsObese.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 340,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9),
                  Text("""Pull-Ups""",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Two of the most effective exercises in the gym require only your bodyweight. Pull-ups work your back, shoulders and biceps while dips work your chest and triceps.",
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.indigo)),
                  ),
                  SizedBox(height: 8),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PullupsWannaTry()));
                        },
                        child: Text("Wanna Try?",
                            style: TextStyle(color: Colors.green)),
                      )
                    ],
                  )
                ])),
            Card(
                clipBehavior: Clip.antiAlias,
                shadowColor: Colors.black,
                elevation: 32,
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Column(children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Ink.image(
                        image: AssetImage('images/DipsObese.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 540,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9),
                  Text("""Dips""",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Two of the most effective exercises in the gym require only your bodyweight. Pull-ups work your back, shoulders and biceps while dips work your chest and triceps.",
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.indigo)),
                  ),
                  SizedBox(height: 8),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DipsWannaTry()));
                        },
                        child: Text("Wanna Try?",
                            style: TextStyle(color: Colors.green)),
                      )
                    ],
                  )
                ])),
          ]),
        ));
  }
}
