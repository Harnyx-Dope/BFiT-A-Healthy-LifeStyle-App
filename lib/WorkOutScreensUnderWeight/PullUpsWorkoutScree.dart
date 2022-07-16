// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/WorkOutScreensUnderWeight/WannaTryScreens/BentOverRowPullUpsWannaTry.dart';
import 'package:project/WorkOutScreensUnderWeight/WannaTryScreens/BridgedRowPullUpsWannaTry.dart';
import 'package:project/WorkOutScreensUnderWeight/WannaTryScreens/ChairKneePullUpsWannaTry.dart';
import 'package:project/WorkOutScreensUnderWeight/WannaTryScreens/DeepLowRowPullUpsWannaTry.dart';
import 'package:project/WorkOutScreensUnderWeight/WannaTryScreens/HangingHoldPullUpsWannaTry.dart';
import 'package:project/WorkOutScreensUnderWeight/WannaTryScreens/Hollow_HoldWannaTry.dart';
import 'package:project/WorkOutScreensUnderWeight/WannaTryScreens/LatPullUpsWannaTry.dart';
import '../ClorFilter.dart';

class PullUpsWorkOutsScreen extends StatefulWidget {
  const PullUpsWorkOutsScreen({Key? key}) : super(key: key);

  @override
  State<PullUpsWorkOutsScreen> createState() => _PullUpsWorkOutsScreen();
}

class _PullUpsWorkOutsScreen extends State<PullUpsWorkOutsScreen> {
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
                      Text("PullUps Workouts",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30)),
                      SizedBox(width: 30),
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
                        image: AssetImage(
                            'images/HollowHoldPullUpsUnderWeight.jpeg'),
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
                  Text("Hollow_Hold",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "This is where you practice the proper pull-up position, so you engage both your core and back and don’t make the mistake of pushing your hips forward when hanging.",
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
                                      HollowHoldPullUpsWannaTry()));
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
                        image: AssetImage(
                            'images/HangingHoldPullUpsUnderWeight.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 270,
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
                  Text("Hanging-Hold",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "This pose helps you practice the bottom of the movement, as well as build grip strength. This eccentric phase of the pull-up is all about lowering down with control.",
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
                                      HangingHoldPullUpsWannaTry()));
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
                            'images/BentOverPullUpsUnderWeight.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 310,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text("Bent-Over Row",
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
                        "Here, you’ll engage your lats and biceps to give you a full range of motion on the pull.",
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
                                      BentOverRowPullUpsWannaTry()));
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
                            'images/ChairKneePullUpsUnderWeight.jpeg'),
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
                  Text("Chair-Knee Pullups",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "This exercise helps to build strength in your back. Make sure you're only using the minimum amount of leg strength to complete the movement. Focus on engaging your upper body muscles. The closer the chair is to your body, the easiest it will be.",
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
                                      ChairKneePullUpsWannaTry()));
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
                    alignment: Alignment.topLeft,
                    children: [
                      Ink.image(
                        image: AssetImage(
                            'images/DeepLowRowPullUpsUnderWeight.jpeg'),
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
                  Text("Deep-Low-Row Pullups",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "With this move, your bodyweight provides the resistance. You’ll learn how to engage your back while pulling. This will also improve grip strength to hold onto the bar throughout the exercise. Ribeiro uses TRX straps here, but if you can’t get a hold of a pair for your strength workouts, use a bar on a squat rack.",
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
                                      DeepLowRowPullUpsWannaTry()));
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
                    alignment: Alignment.topLeft,
                    children: [
                      Ink.image(
                        image: AssetImage(
                            'images/BridgedRowPullUpsUnderWeight.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 280,
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
                  Text("Bridged-Row Pullups",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Engaging your biceps and lats, this is the next step up to getting accustomed to using your full bodyweight. Again, if needed, use a squat rack bar. Be sure to keep your back straight as you pull your body towards your hands for best results.",
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
                                      BridgedRowPullUpsWannaTry()));
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
                    alignment: Alignment.topLeft,
                    children: [
                      Ink.image(
                        image: AssetImage('images/LatPullUpsUnderWeight.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 280,
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
                  Text("Lat-Pull Down",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Similar to the motion of a pull-up, this move engages your back. Keep your core tight as you pull the bands down to ensure you aren’t arching your back.",
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
                                  builder: (context) => LatPullUpsWannaTry()));
                        },
                        child: Text("Wanna Try?",
                            style: TextStyle(color: Colors.green)),
                      )
                    ],
                  )
                ])),
            //------------FiFth Card---------------
          ]),
        ));
  }
}
