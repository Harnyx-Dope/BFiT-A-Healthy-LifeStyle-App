// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/WorkoutScreen.dart';
import 'dart:math';

import '../../Contact.dart';

class FullCrunchesBellyFatWannaTry extends StatefulWidget {
  const FullCrunchesBellyFatWannaTry({Key? key}) : super(key: key);

  @override
  State<FullCrunchesBellyFatWannaTry> createState() =>
      _FullCrunchesBellyFatWannaTry();
}

class _FullCrunchesBellyFatWannaTry extends State<FullCrunchesBellyFatWannaTry>
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
                                """Step-1: Lie on your back on an exercise mat. Using a mat, thick towel, or carpeted surface is more comfortable than lying on a hard, bare floor.
Step-2: Bend your knees so your feet are flat on the floor. Your knees and feet should be about hip-width apart. Position your feet so your heels are about 12 to 18 in (30 to 46 cm) from your tailbone.
Step-3: Cross your arms in front of your chest. You could also place your fingertips behind your neck or head if it feels more comfortable. Just be sure not to tug your head or neck up as you perform a crunch.
Step-4: Lift your shoulder blades off of the mat with a smooth, controlled motion. Inhale, then exhale as you engage your ab muscles and raise your torso. Lift yourself just enough to raise your shoulder blades off of the floor. Once your shoulders are raised, pause and hold that position for 1 to 2 seconds.
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
