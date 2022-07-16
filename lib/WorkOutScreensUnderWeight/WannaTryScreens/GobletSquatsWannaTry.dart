// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/UnderWorkoutScreen.dart';
import 'dart:math';

import '../../Contact.dart';

class GobletSquatsWannaTry extends StatefulWidget {
  const GobletSquatsWannaTry({Key? key}) : super(key: key);

  @override
  State<GobletSquatsWannaTry> createState() => _GobletSquatsWannaTry();
}

class _GobletSquatsWannaTry extends State<GobletSquatsWannaTry>
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
                                """Step-1: Stand with your feet slightly wider than hip-distance apart, your toes angled slightly outward.
Step-2: Hold a kettlebell in both hands at your chest, gripping the handles as though you were cupping a goblet—one hand on either side of the handles. Bend your elbows so the goblet is positioned right at the center of your chest.
Step-3: Warm-up by using a lighter (or no) kettlebell to get a sense of the movement. Then, progress to a heavier weight for your full set.
Step-4: Engage your core and look straight ahead—you want to keep your back neutrally aligned and your eyes facing straight ahead throughout the squat.
Step-5: Press your hips back and begin bending your knees to perform the squat. Inhale as you perform this downward phase.
Step-6: Keep the kettlebell close to your body during the movement.
Step-7: Focus on keeping your chest tall as you continue pressing your hips back and lowering down. The goal is to get your hips below parallel with your knees.
Step-8: Make sure your weight remains evenly distributed across your feet, or slightly more weighted toward your heels—you shouldn't come up on your toes as you squat.
Step-9: Check your position at the bottom of the squat—your elbows should be positioned on the inside of either knee at the lowest point of the squat. This helps ensure that your knees remain aligned with your toes as you move into the deep squat position.
Step-10: Press through your heels and reverse the motion to return to the starting position. Exhale as you rise, and be sure to press your hips forward at the top of the squat to more fully engage your glutes.
Step-11: Complete a full set and carefully rack the kettlebell. Always avoid dropping weights from a height. Repeat through as many sets as desired.""",
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
