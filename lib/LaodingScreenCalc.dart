// ignore_for_file: avoid_unnecessary_containers, avoid_print, non_constant_identifier_names, prefer_const_constructors, unused_local_variable, prefer_const_constructors_in_immutables, use_build_context_synchronously, unused_element, unused_import

import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/ObeseWorkoutScreen.dart';
import 'package:project/UnderWorkoutScreen.dart';
import 'package:project/WorkoutScreen.dart';

class LoadingScreenCalc extends StatelessWidget {
  final String Und = "**You Are Underweight";
  final String He = "**You Are Healthy";

  final String Ob = """**You Are OverWeight
   As Well As Obese""";
  final double BMI;
  final String Name;
  final int height;
  final int weight;

  LoadingScreenCalc(
      {Key? key,
      required this.BMI,
      required this.Name,
      required this.height,
      required this.weight})
      : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        final shouldPop = showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Do you want to exit?'),
                actionsAlignment: MainAxisAlignment.spaceBetween,
                actions: [
                  TextButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    child: const Text('Yes'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    child: const Text('No'),
                  ),
                ],
              );
            });
        return Future.value(false);
      },
      child: MaterialApp(
          color: Color.fromARGB(255, 234, 79, 2),
          darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(scaffoldBackgroundColor: Colors.black),
          home: Scaffold(
              body: Stack(children: [
            Image(
              image: AssetImage('images/Final2.jpg'),
              width: MediaQuery.of(context).size.width,
              height: 800,
              fit: BoxFit.fill,
            ),
            SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      ' Details...',
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 198, 114, 23),
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  totalRepeatCount: 4,
                  pause: const Duration(milliseconds: 5000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ),
              // ignore: deprecated_member_use
            ),
            Container(
              padding: EdgeInsets.fromLTRB(3, 120, 20, 10),
              child: ListTile(
                  title: Text('Name :',
                      style: TextStyle(
                          color: Color.fromARGB(255, 202, 235, 17),
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    Name.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(3, 220, 20, 10),
              child: ListTile(
                  title: Text('Height:',
                      style: TextStyle(
                          color: Color.fromARGB(255, 202, 235, 17),
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    height.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(3, 320, 20, 10),
              child: ListTile(
                  title: Text('Weight :',
                      style: TextStyle(
                          color: Color.fromARGB(255, 202, 235, 17),
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    weight.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(3, 420, 20, 10),
              child: ListTile(
                  title: Text('Bmi :',
                      style: TextStyle(
                          color: Color.fromARGB(255, 202, 235, 17),
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    BMI.toStringAsFixed(2),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  )),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 520, 20, 10),
                child: BMI < 18.5
                    ? Text(
                        Und,
                        style: TextStyle(
                            color: Color.fromARGB(255, 231, 28, 110),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      )
                    : Text("")),
            Container(
                padding: EdgeInsets.fromLTRB(10, 520, 20, 10),
                child: BMI >= 18.5 && BMI <= 23.99
                    ? Text(
                        He,
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      )
                    : Text("")),
            // Container(
            //     padding: EdgeInsets.fromLTRB(10, 520, 20, 10),
            //     child: BMI > 25.0 && BMI < 29.9
            //         ? Text(
            //             Over,
            //             style: TextStyle(
            //                 color: Color.fromARGB(255, 228, 138, 3),
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w400),
            //           )
            //         : Text("")),
            Container(
                padding: EdgeInsets.fromLTRB(10, 520, 20, 10),
                child: BMI >= 24
                    ? Text(
                        Ob,
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      )
                    : Text("")),
            Container(
                padding: EdgeInsets.fromLTRB(10, 570, 20, 10),
                child: ElevatedButton(
                    child: Text(
                      "Explore My personalised Training",
                      style:
                          TextStyle(color: Color.fromARGB(255, 225, 242, 244)),
                    ),
                    onPressed: () {
                      if (BMI < 18.5) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    UnderWeightWorkOutsScreen()));
                      }
                      if (BMI >= 18.5 && BMI <= 23.99) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CardDesignPractice()));
                      }
                      if (BMI >= 24) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ObeseWorkOutScreen()));
                      }
                    }))
          ]))),
    );
  }
}
