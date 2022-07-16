// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/WorkoutScreen.dart';
import 'dart:math';

import '../../Contact.dart';

class SideTouchesBellyFatWannaTry extends StatefulWidget {
  const SideTouchesBellyFatWannaTry({Key? key}) : super(key: key);

  @override
  State<SideTouchesBellyFatWannaTry> createState() =>
      _SideTouchesBellyFatWannaTry();
}

class _SideTouchesBellyFatWannaTry extends State<SideTouchesBellyFatWannaTry>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: Duration(seconds: 10), vsync: this)
        ..repeat();
  bool _isVisible = true;
  //double num  = ;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: Scaffold(
            body: SizedBox(
              width: double.infinity,
              child: Center(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  AnimatedBuilder(
                    animation: _controller,
                    child: Image(
                        height: 200,
                        image: AssetImage('images/FlutterMapp-.png')),
                    builder: (BuildContext context, Widget? child) {
                      return Transform.rotate(
                        angle: _controller.value * 50.0 * pi / 12.0,
                        child: child,
                      );
                    },
                  ),
                  Visibility(
                    visible: _isVisible,
                    child: Container(
                        height: 230,
                        width: 350,
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        color: Colors.orange,
                        child: ListView(
                          children: [
                            Column(children: [
                              Text(
                                """Step-1: Lie down on the floor. Lie down on a fitness mat. Lie with your back flat on the ground, legs together and knees bent.Keep in mind that this movement is not recommended for anyone who has ever had a back problem.
Step-2: Turn your legs to one side. With your knees remaining bent, turn at your waist and bring both of your legs to one side of your body, down to the floor. Your legs should be lying on top of each other. As you bring your legs down to the floor, keep your shoulder blades and the upper part of your back flat on the floor.
Step-3: Crunch to your side. Place your hands behind or at the sides of your head. Flex your abdominal muscles, and lift your shoulders off the floor. Be sure to keep your shoulders straight and level just as you would for a normal crunch. Hold the position for a moment, then release your constricted abdominal muscles to slowly bring your shoulders back down to the mat.
Step-4: Complete your crunches on the other side of your body. Once you have completed one set of crunches on one side of your body (about 10–15 reps), turn your legs over to do the crunches on other side of your body. It’s recommended to do this exercise 1–3 sets on each side, 2–3 times a week.
Step-5: Lower yourself back down with a slow, steady motion. Gently inhale as you slowly lower your torso. Don't just drop back down to the mat. Using smooth, controlled motions work your ab muscles more effectively and help prevent injury.""",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )
                            ])
                          ],
                        )),
                  ),
                  AnimatedBuilder(
                    animation: _controller,
                    child: Image(
                        height: 200,
                        image: AssetImage('images/FlutterMapp-.png')),
                    builder: (BuildContext context, Widget? child) {
                      return Transform.rotate(
                        angle: _controller.value * 50.0 * pi / 12.0,
                        child: child,
                      );
                    },
                  ),
                ]),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.red[100],
              foregroundColor: Colors.black,
              splashColor: Colors.blueGrey,
              tooltip: 'See Above!',
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              child: Icon(Icons.play_arrow_sharp),
            ),
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CardDesignPractice()));
                        },
                        icon: Icon(
                          Icons.home,
                          color: Colors.black54,
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Contact()));
                        },
                        icon: Icon(
                          Icons.info,
                          color: Colors.black54,
                        )),
                  ]),
            )));
  }
}
