// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/WorkoutScreen.dart';
import 'dart:math';

import '../../Contact.dart';

class ExtensionTowelPushUpsIncreaseHeightWannaTry extends StatefulWidget {
  const ExtensionTowelPushUpsIncreaseHeightWannaTry({Key? key})
      : super(key: key);

  @override
  State<ExtensionTowelPushUpsIncreaseHeightWannaTry> createState() =>
      _ExtensionTowelPushUpsIncreaseHeightWannaTry();
}

class _ExtensionTowelPushUpsIncreaseHeightWannaTry
    extends State<ExtensionTowelPushUpsIncreaseHeightWannaTry>
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
                                """Step-1: Place a large towel or two small towels over the pull-up bar. Grab the ends of the towel with a full overhand grip. Your hands should be shoulder-width apart. If you’re unable to grab the towel, stand on a plyometric box or a secure flat bench.
Step-2:  Step off of the box and allow your legs to hang. Your arms and legs should be long. Your elbows should be slightly bent. Squeeze your glutes and quads. Engage your core. Your ribs should be down and your pelvis should be slightly tucked.
Step-3: Rotate your shoulders outward to engage your lats. Your shoulder blades should be upwardly rotated away from your spine. Your chin should remain tucked throughout the movement, as if you were holding an egg under your chin. All repetitions should begin from this starting position.
Step-4: Initiate the upward movement by simultaneously pulling your shoulder blades down and pulling your elbows toward your body. Continue to pull your shoulder blades toward your spine and squeeze your upper back and lat muscles until your chest reaches hand level. Pause at the top of the movement.
Step-5: Begin the downward movement by simultaneously straightening your arms and allowing your shoulder blades to upwardly rotate and move away from your spine. Slowly lower your body back to the starting position. Your arms should be long with a slight bend in your elbows. Your shoulder blades should be away from your spine.
Step-6: Repeat the towel pull-up for your desired number of repetitions.""",
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
