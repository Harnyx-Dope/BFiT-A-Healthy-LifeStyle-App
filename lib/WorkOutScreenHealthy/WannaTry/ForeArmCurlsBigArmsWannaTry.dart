// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/WorkoutScreen.dart';
import 'dart:math';

import '../../Contact.dart';

class ForeArmCurlsBigArmsWannaTry extends StatefulWidget {
  const ForeArmCurlsBigArmsWannaTry({Key? key}) : super(key: key);

  @override
  State<ForeArmCurlsBigArmsWannaTry> createState() =>
      _ForeArmCurlsBigArmsWannaTry();
}

class _ForeArmCurlsBigArmsWannaTry extends State<ForeArmCurlsBigArmsWannaTry>
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
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        color: Colors.orange,
                        child: ListView(
                          children: [
                            Column(children: [
                              Text(
                                """Step-1: Lie prone on the floor with your hands positioned shoulder-width apart under your neck, and legs extended straight behind you.
Step-2: With your forearms resting on the floor and elbows tucked in pointing behind you, exhale and press yourself up, extending your arms.
Step-3: Continue until your arms are fully extended, making sure to keep your torso in line with your lower body.
Step-4: Inhale and lower yourself down, while keeping your elbows tucked in, returning to the starting position with your forearms on the floor.""",
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
