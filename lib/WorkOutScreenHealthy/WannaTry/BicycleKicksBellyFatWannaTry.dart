// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/WorkoutScreen.dart';
import 'dart:math';

import '../../Contact.dart';

class BicycleKicksBellyFatWannaTry extends StatefulWidget {
  const BicycleKicksBellyFatWannaTry({Key? key}) : super(key: key);

  @override
  State<BicycleKicksBellyFatWannaTry> createState() =>
      _BicycleKicksBellyFatWannaTry();
}

class _BicycleKicksBellyFatWannaTry extends State<BicycleKicksBellyFatWannaTry>
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
                                """Step-1: Turn your back where you want the ball to go. To do a bicycle kick properly, you'll basically need to fall backward and kick the ball up and over your head, in the opposite direction from where you were facing. It's an unexpected and spectacular play when done properly, because you're facing the other direction.
Step-2: Push off with your kicking foot. To start the motion of the classic bicycle kick, lift the knee of your non-dominant foot and push off the ground with your kicking foot. The higher you can lift your non-kicking foot the better, because this will help you get the momentum necessary to get your kicking foot up and over properly. 
Step-3: Dip your head and shoulders backwards. As you raise your leg, throw your momentum backward, as if you’re trying to get away from the ball and flop back down on the ground. Be careful not to throw your head back too quickly, or to dip your body into a full-on flip. Stay focused on the kick and making contact with the ball, not falling back super-fast.
Step-4: Lift your kicking leg straight up as you fall. As your momentum carries you backward, "bicycle" your legs, bringing your non-kicking foot back down toward the ground, and bringing your kicking leg, which you jumped off, up toward the ball to make contact.
Step-5: Strike the ball. Use the ridge on the hardest part of the top of your foot, if possible, driving the ball straight over your head and back behind you. Ideally, you want to kick the ball flush on the opposite side of the ball from the goal, and not on the bottom of the ball, which might end up sending the ball straight up in the air.
Step-6: Brace yourself. Put your arms out to your sides to brace your fall and catch yourself with your arms as wide as possible to take the bump pressure off your back and your hips. Be very careful not to rotate backward too quickly.""",
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
