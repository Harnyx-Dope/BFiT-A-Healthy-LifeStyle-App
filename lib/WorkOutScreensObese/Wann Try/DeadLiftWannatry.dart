// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/ObeseWorkoutScreen.dart';
import 'dart:math';

import '../../Contact.dart';

class DeadLiftWannatry extends StatefulWidget {
  const DeadLiftWannatry({Key? key}) : super(key: key);

  @override
  State<DeadLiftWannatry> createState() => _DumbBellPressWannaTry();
}

class _DumbBellPressWannaTry extends State<DeadLiftWannatry>
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
                                """Step-1: Stand hip-width apart with the bar going over top your shoelaces.
Step-2: Sit your hips back so that you have a slight bend in your knees, while maintaining an arch in your lower back.
Step-3:  Continue bending your knees and hips down until your hands are able to grasp the bar just outside your shins. Keep your head in a position to where you are looking about 5-10 feet out in front of your body.
Step-4: Begin exercise by inhaling and bracing your midsection as if you are about to be punched in the stomach (Valsalva maneuver).
Step-5: Next, begin to raise your hips up slightly as you raise the bar along your shins. As the bar passes your knees, simultaneously start to bring your hips forward until you are standing upright, with your chest out and your shoulder blades pinned back. You should look similar to a solder standing at attention.
Step-6: To move back to starting position, reverse movement by dropping your hips back and allowing the bar to maintain contact with your legs as you lower it down to the ground.
Step-7: Repeat the number of reps set out in your program.
Step-8: PJF: If you do not have access to barbells you can do this exercise with other weights such as dumbbells or kettlebells. If you have no access to weights, you will skip this exercise completely.
Step-9: PJF: With feet flat beneath bar, squat down and grasp bar with shoulder width or slightly wider alternating grip (one palm facing down, one palm facing up).
Step-10: PJF: Lift bar by extending hips and knees to full extension. Squeeze shoulder blades together and keep a flat back. Keep the barbell close to the body throughout the exercise.""",
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
