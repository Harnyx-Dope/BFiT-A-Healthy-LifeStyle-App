// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/UnderWorkoutScreen.dart';
import 'dart:math';

import '../../Contact.dart';

class BoxSquatsWannaTry extends StatefulWidget {
  const BoxSquatsWannaTry({Key? key}) : super(key: key);

  @override
  State<BoxSquatsWannaTry> createState() => _BoxSquatsWannaTry();
}

class _BoxSquatsWannaTry extends State<BoxSquatsWannaTry>
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
                        padding: EdgeInsets.all(40),
                        color: Colors.orange,
                        child: ListView(
                          children: [
                            Column(children: [
                              Text(
                                """Step-1: Start by setting up a barbell in the squat rack according to your height. The barbell should be slightly lower than your shoulders.
Step-2: Place a plyometric box a couple of feet behind the barbell. The height of the plyometric box should allow your knees to be at a 90-degree angle when you sit on the box. You should have enough space to take a couple of steps backward after unracking the barbell.
Step-3: Facing the barbell, step underneath it and place your hands on both sides of the bar. The barbell should rest on the muscles of your upper back.
Step-4: Un-rack the barbell and take a couple of steps backward until you’re a few inches away from the box.
Step-5: Your posture should be tall with your feet wider than hip-width apart and your knees slightly bent. Your shoulders should be directly over your hips with your head and neck in a neutral position. Your chin should remain tucked throughout the movement as if you were holding an egg under your chin.
Step-6: The weight on your feet should be evenly distributed along each entire foot. Grip the floor with your feet to create a stable foot position. Rotate your shoulders outward to engage your lats and upper back. Pre-tension your shoulders and hips, and engage your core. All repetitions should begin from this position.
Step-7: While maintaining your alignment, begin the downward movement by bending your hips, knees, and ankles. Lower into the squat until your glutes contact the plyometric box. The weight on your feet should be evenly distributed.
Step-8: While maintaining full-body tension, pause for a second on the box to eliminate your momentum.
Step-9: To begin the upward movement, push your feet into the ground to initiate standing. Push through your midfoot and heel while keeping your toes engaged.
Step-10: As you stand, keep your chest high and squeeze your glutes. Allow your knees to straighten and your hips to travel forward. As you finish the movement, squeeze your glutes and quadriceps while maintaining a neutral spine.
Step-11: At the end of each repetition, your shoulders should finish directly over your hips. Imagine that your pelvis is a bucket filled water and you’re attempting not to spill any of it.""",
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
                                  builder: (context) =>
                                      UnderWeightWorkOutsScreen()));
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
