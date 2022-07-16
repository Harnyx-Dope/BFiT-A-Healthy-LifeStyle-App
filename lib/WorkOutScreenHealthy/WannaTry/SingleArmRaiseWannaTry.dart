// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/WorkoutScreen.dart';
import 'dart:math';

import '../../Contact.dart';

class SingleArmRaiseWannaTry extends StatefulWidget {
  const SingleArmRaiseWannaTry({Key? key}) : super(key: key);

  @override
  State<SingleArmRaiseWannaTry> createState() => _DumbBellPressWannaTry();
}

class _DumbBellPressWannaTry extends State<SingleArmRaiseWannaTry>
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
                        height: 290,
                        width: 345,
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        color: Colors.orange,
                        child: ListView(
                          children: [
                            Column(children: [
                              Text(
                                """Step 1. Get into an all-fours position with your knees and toes flexed and in contact with the floor. Your hips should be over your knees.
Step 2. Grip the ground with your hands. Your hands should be shoulder-width apart or slightly narrower.
Step 3. Straighten your legs to lift your knees off of the ground so you end up in a push-up position. Your legs should be shoulder-width apart or slightly wider. Your body should be in a straight line from your head to your heels. Push your toes into the ground.
Step 4. Pre-tension your shoulders and hips while engaging your core. Your ribs should be down and your pelvis should be slightly tucked. Squeeze your quads and glutes. Your chin should remain tucked throughout the movement, as if you were holding an egg under your chin.
Step 5. Rotate your shoulders outward to engage your lats and upper back. Place your non-pushing arm next to your side and make a fist. All repetitions should begin from this starting position.
Step 6. While maintaining full-body tension, pull your chest toward your hands by bending your elbow. Your shoulder blade should retract as you lower toward the ground.
Step 7. Lower your body until your upper arm is even with your back. Your elbow should be close to your ribcage and your wrist should be under your elbow. Pause briefly at the bottom position.
Step 8. While maintaining your alignment, initiate the upward movement by squeezing your chest, pushing your hand through the floor and straightening your elbow. Your shoulder blade should protract as you push to the top of the movement.
Step 9. Finish the movement by squeezing your chest and triceps.
Step 10. Repeat the one-arm push-up for your desired number of repetitions, then switch sides.""",
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
