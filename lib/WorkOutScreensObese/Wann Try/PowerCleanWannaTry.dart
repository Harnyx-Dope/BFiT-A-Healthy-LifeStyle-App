// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/ObeseWorkoutScreen.dart';
import 'dart:math';

import '../../Contact.dart';

class PowerCleanWannaTry extends StatefulWidget {
  const PowerCleanWannaTry({Key? key}) : super(key: key);

  @override
  State<PowerCleanWannaTry> createState() => _DumbBellPressWannaTry();
}

class _DumbBellPressWannaTry extends State<PowerCleanWannaTry>
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
                                """Step-1: Stand tall with your feet hip-distance apart and place the barbell at your feet. If your flexibility is limited, use a lift or blocks to elevate the bar so you can reach it more easily.
Step-2: Lower your body into a squat position and grip the bar with your palms facing your legs. Your hands are outside of your shins, slightly wider than shoulder-width apart.
Step-3: Lengthen the spine so you don't feel hunched over. The back stays long and strong throughout the entire exercise. Keep your focus forward.
Step-4: Engage your core so your back and midsection feel supported.
Step-5: Lift the bar as you stand up, keeping the weight close to your body. It should feel like you are pulling the bar along your shins and above the knees.
Step-6: Continue lifting until the bar is at your thighs. The back is straight with the shoulders over the hips. The ankles, knees, and hips are fully aligned. Keep the core engaged and the back strong.
Step-7: Bend the knees slightly to prepare for the next quick succession of movements.
Step-8: Thrust or "scoop" the hips forward in a powerful movement to pull the bar toward the chest. This explosive movement may involve lifting to the balls of your feet; your feet might even clear the floor slightly.
Step-9: Elevate the shoulders to create power as you pull the bar through the final stage of this movement. Flex through the elbows and pull them forward to prepare for the next phase.
Step-10: Pull your body under the bar as you continue lifting. Your elbows will snap forward (under the bar) and your shoulders will roll forward, making it feel as if your shoulder blades are pulling down and back.
Step-11: Drop into a quarter squat position, keeping the back strong and posture erect.
Step-12: Catch the bar so it rests on the front of the shoulders.
Step-13: Stand up tall with the weight resting solidly on the front of the shoulders.
Step-14: Lower the weight down to the floor in a slow, controlled manner.
""",
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
                                  builder: (context) => ObeseWorkOutScreen()));
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
