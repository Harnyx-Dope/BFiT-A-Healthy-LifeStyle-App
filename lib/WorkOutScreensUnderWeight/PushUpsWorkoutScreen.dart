// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/WorkOutScreensUnderWeight/WannaTryScreens/ForeArmPushUpWannaTry.dart';

import '../ClorFilter.dart';
import 'WannaTryScreens/AssisstedPushUpWannaTry.dart';
import 'WannaTryScreens/NagaticvePushUpsWannaTry.dart';
import 'WannaTryScreens/PartialPushUpsWannaTry.dart';

class PushUpsWorkOutsUnderWeight extends StatefulWidget {
  const PushUpsWorkOutsUnderWeight({Key? key}) : super(key: key);

  @override
  State<PushUpsWorkOutsUnderWeight> createState() =>
      _PushUpsWorkOutsUnderWeight();
}

class _PushUpsWorkOutsUnderWeight extends State<PushUpsWorkOutsUnderWeight> {
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
                      Text("PushUps Workouts",
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
                        image:
                            AssetImage('images/ForeArmPushUpsUnderWeight.jpeg'),
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
                  Text("ForeArm-PushUps",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Performing pushups that target your forearm muscles can add strength, girth and definition to your lower arms. This form of muscle group workout is helpful when you want to develop a balanced and well-rounded upper body regimen.",
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
                                  builder: (context) => Practice1()));
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
                            'images/NegativePushupsUnderWeight.jpeg'),
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
                  Text("Negative-PushUps",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "A convenient calisthenics exercise, negative push-ups can help build upper body and core strength when performed properly.",
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
                                  builder: (context) => Practice2()));
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
                        image:
                            AssetImage('images/PartialPushUpsUnderWeight.jpeg'),
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
                  Text("Partial-PushUps",
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
                        "Partial push-up is a calisthenics exercise that primarily targets the chest and to a lesser degree also targets the abs, lower back, shoulders and triceps.",
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
                                  builder: (context) => Practice3()));
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
                            'images/AssistedPushUpsUnderWeight.jpeg'),
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
                  Text("Assisted-PushUps",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "While it's often thought of as a chest exercise, it also works the pectoralis major and minor, triceps, anterior deltoids, and core muscles. Notable benefits of performing push-ups include building upper body strength, reducing the risk of cardiac events, and improving body composition.",
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
                                  builder: (context) => Practice4()));
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
