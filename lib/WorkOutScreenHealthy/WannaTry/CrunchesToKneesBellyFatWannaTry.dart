// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/WorkoutScreen.dart';
import 'dart:math';

import '../../Contact.dart';

class CrunchesToKneesBellyFatWannaTry extends StatefulWidget {
  const CrunchesToKneesBellyFatWannaTry({Key? key}) : super(key: key);

  @override
  State<CrunchesToKneesBellyFatWannaTry> createState() =>
      _CrunchesToKneesBellyFatWannaTry();
}

class _CrunchesToKneesBellyFatWannaTry
    extends State<CrunchesToKneesBellyFatWannaTry>
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
                        height: 200,
                        width: 350,
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        color: Colors.orange,
                        child: ListView(
                          children: [
                            Column(children: [
                              Text(
                                """Step-1: Lie with your back flat on the ground and your legs raised. For the sake of comfort, lie on a carpeted section of floor or on a yoga mat. Bend your legs and draw up your knees until they’re directly over your pelvis. Bend your knees at a 90-degree angle so that your feet are sticking straight out.
Step-2: Hold your hands behind your head and look toward your stomach. To get your torso into position for elbow-to-knee crunches, stretch your arms up behind you. Then, bend your elbows and hold both hands behind your head. Bend your neck so that you are looking down your body towards your belly button.
Step-3: Contract your abs and bring your knees up to your elbows. Keep your chin down and tense your abdominal muscles. Keep your abs activated the whole time while you're doing the exercise. To do a crunch, keep your elbows in place and lift your knees upward until your elbows and knees touch. You should feel a slight burn in your lower abs as you touch your elbows and knees together.""",
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
