// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/WorkOutScreenHealthy/WannaTry/BackFlexIncreaseHeightWannaTry.dart';
import 'package:project/WorkOutScreenHealthy/WannaTry/BodyWeightExtensionIncreaseHeightWannaTry.dart';
import 'package:project/WorkOutScreenHealthy/WannaTry/CatStretchIncreaseHeightWannaTry.dart';
import 'package:project/WorkOutScreenHealthy/WannaTry/ExtensionTowelPushUpsIncreaseHeightWannaTry.dart';
import 'package:project/WorkOutScreenHealthy/WannaTry/KneeStretchIncreaseHeightWannaTry.dart';
import 'package:project/WorkOutScreenHealthy/WannaTry/PullUpsIncreaseHeightWannaTry.dart';
import 'package:project/WorkOutScreenHealthy/WannaTry/TowelLowerExtensionIncreaseHeightWannaTry.dart';

import '../ClorFilter.dart';

class IncreaseHeightWorkOutsScreenHealthy extends StatefulWidget {
  const IncreaseHeightWorkOutsScreenHealthy({Key? key}) : super(key: key);

  @override
  State<IncreaseHeightWorkOutsScreenHealthy> createState() =>
      _IncreaseHeightWorkOutsScreenHealthy();
}

class _IncreaseHeightWorkOutsScreenHealthy
    extends State<IncreaseHeightWorkOutsScreenHealthy> {
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
                    padding: EdgeInsets.only(
                      left: 15,
                      top: 12,
                    ),
                    height: 100,
                    width: 400,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(children: [
                      Text("Increase Height",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25)),
                      SizedBox(width: 115),
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
                            'images/BackFlexIncreaseHeightHealthy.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 310,
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
                  Text("Back-Flex",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Stretching your body to become more supple and flexible offers many physical benefits. Such training allows for easier and deeper movements while building strength and stability. Stretching your muscles and joints also leads to greater range of motion, improved balance, and increased flexibility.",
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
                                      BackFlexIncreaseHeightWannaTry()));
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
                            'images/KneeStretchIncreaseHeightHealthy.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 200,
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
                  Text("Knee-Stretch",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Knee stretches reduce tightness in the muscles around your knee. This improves your knee's flexibility and mobility, making it easier to move during exercise and daily activities. Plus, when the muscles around your knee are loose, you're less likely to have: knee pain.",
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
                                      KneeStretchIncreaseHeightWannaTry()));
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
                            'images/ExtensionTowelPushIncreaseHeightHealthy.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 360,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text("Extension-Towel-Push",
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
                        "These workouts can be done just by using a towel as equipment. You can perform simple stretches, work on mobility and strength exercises using the towel. These exercises keep the joints healthy and muscles supple and improve blood circulation.",
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
                                      ExtensionTowelPushUpsIncreaseHeightWannaTry()));
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
                            'images/BodyWeightExtensionIncreaseHeightHealthy.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 400,
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
                  Text("BodyWeight-Extension",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "One of the most important benefits of bodyweight exercise is its ability to improve your cardiovascular endurance and muscle strength all at once. Frequently changing your position keeps the heart rate elevated, while body weight and gravity work together to strengthen muscles.",
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
                                      BodyWeightExtensionIncreaseHeightWannaTry()));
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
                            'images/TowelLowerExtensionIncreaseHeightHealthy.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 330,
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
                  Text("Towel-Lower-Extension",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Generally, people fail to see the importance of maintaining strong, healthy feet. A simple towel lower extension exercise can strengthen your feet and avoid foot-related injuries.",
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
                                      TowelLowerExtensionIncreaseHeightWannaTry()));
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
                        image: AssetImage(
                            'images/UpPullsIncreaseHeightHealthy.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 330,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9),
                  Text("""Up-Pulls""",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "Up pulls is one of the most effective exercises for strengthening the back muscles.",
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
                                      PullUpsIncreaseHeightWannaTry()));
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
                            'images/CatStretchIncreaseHeightHealthy.jpeg'),
                        colorFilter: ColorFilters.greyscale,
                        height: 410,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9),
                  Text("""Cat-Stretch""",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 24)),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.all(16).copyWith(bottom: 0),
                    child: Text(
                        "This simple pose powers up your brain and improves focus, coordination and mental stability. The cat/cow pose improves blood circulation between the vertebrae of your spine and it helps in relieving back pain and stress. It also calms you down.",
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
                                      CatStretchIncreaseHeightWannaTry()));
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
