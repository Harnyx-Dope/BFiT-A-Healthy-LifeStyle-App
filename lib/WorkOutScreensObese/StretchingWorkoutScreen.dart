// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/ClorFilter.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/ArmCircleWannaTry.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/ButtKicksWannaTry.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/HighKneesWannaTry.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/HipCirclesWannaTry.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/JumpingJacksWannaTry.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/LegSwingsWannaTry.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/PlankWalkOutsWannaTry.dart';
import 'package:project/WorkOutScreensObese/Wann%20Try/StandingToeTapsWannaTry.dart';

class StretchingObeseWorkoutScreen extends StatefulWidget {
  const StretchingObeseWorkoutScreen({Key? key}) : super(key: key);

  @override
  State<StretchingObeseWorkoutScreen> createState() =>
      _StretchingObeseWorkoutScreen();
}

class _StretchingObeseWorkoutScreen
    extends State<StretchingObeseWorkoutScreen> {
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
                      Text("Stretching Workouts",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30)),
                      SizedBox(width: 15),
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
                        image:
                            AssetImage('images/HighKneesStretchingObese.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 440,
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
                  Text("High-Knees",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        " High knees activate your quadriceps, hamstrings, calves, glutes, and hip flexors, helping improve muscular endurance, balance, and coordination in these muscles. When done at a high intensity and with bounding or explosive knee drives, they can also improve power in your lower body .",
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
                                  builder: (context) => HighKneesWannaTry()));
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
                        image:
                            AssetImage('images/LegSwingsStretchingObese.jpeg'),
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
                  Text("Leg-Swings",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Forward leg swings and backward leg swings are a great dynamic stretching exercise. The purpose of this exercise is to warm up and stretch the hip muscles and the hip joint. This movement helps to prevent injuries and also reduces pain in the hip areaForward leg swings are a great dynamic stretching exercise. The purpose of this exercise is to warm up and stretch the hip muscles and the hip joint. This movement helps to prevent injuries and also reduces pain in the hip area.",
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
                                  builder: (context) => LegSwingsWannaTry()));
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
                        image: AssetImage(
                            'images/PlankWalkoutsStretchingObese.jpeg'),
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
                  Text("Plank Walk-Outs",
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
                        "Walkouts will get the blood flowing to and stretch out your hamstrings, calves, glutes and lower back .",
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
                                      PlankWalkOutsWannaTry()));
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
                        image: AssetImage(
                            'images/ArmsCirclesStretchingObese.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 320,
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
                  Text("Arm-Circles",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "This unintimidating warmup gets your blood moving and can help to build muscle tone in your shoulders, triceps, and biceps.",
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
                                  builder: (context) => ArmCircleWannaTry()));
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
                        image: AssetImage(
                            'images/StandingToeTapsStretchingObese.jpeg'),
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
                    height: 4,
                  ),
                  Text("Standing-Toe-Taps",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "This version of the exercise is great for raising your heart rate, targeting the muscles in your lower body, burning calories, and improving speed, balance, and foot-handling skills.",
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
                                      StandingToeTapsWannaTry()));
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
                        image: AssetImage(
                            'images/JumpingJacksStretchingObese.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 350,
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
                  Text("Jumping-Jacks",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        """They are good for bone health.They are helpful for weight loss.They are full body workout.They reduce stress.They are good for heart health.""",
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
                                      JumpingJacksWannaTry()));
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
                        image:
                            AssetImage('images/KicksButtsStretchingObese.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 440,
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
                  Text("Butt-Kicks",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Adding plyometric moves, like butt kicks, to your regular exercise routine can strengthen your hamstrings, which may help you run faster and more efficiently. Even if you're not a runner, adding butt kicks to your workout can be a great way to increase your heart rate, boost your stamina, and elevate your fitnessAdding plyometric moves, like butt kicks, to your regular exercise routine can strengthen your hamstrings, which may help you run faster and more efficiently. Even if you're not a runner, adding butt kicks to your workout can be a great way to increase your heart rate, boost your stamina, and elevate your fitness.",
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
                                  builder: (context) => ButtKicksWannaTry()));
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
                        image:
                            AssetImage('images/HipCirclesStretchingObese.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 440,
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
                  Text("Hip-Circles",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Hip circles are a great dynamic stretching exercise. This exercise helps to loosen the lower back and hip muscles, strengthens the core, and trims the waist. This is also a great exercise for relieving stress and tension and improving your flexibility.",
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
                                  builder: (context) => HipCirclesWannaTry()));
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
