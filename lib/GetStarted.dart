// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, unused_local_variable

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/services.dart';

import 'ClorFilter.dart';

class Practice extends StatelessWidget {
  const Practice({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        final shouldPop = showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Do you want to exit?'),
              actionsAlignment: MainAxisAlignment.spaceBetween,
              actions: [
                TextButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: const Text('No'),
                ),
              ],
            );
          },
        );
        return Future.value(false);
      },
      child: MaterialApp(
          darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              //colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
              //primarySwatch: Colors.green,
              scaffoldBackgroundColor: Color.fromARGB(255, 38, 37, 37)),
          home: Scaffold(
            body: Center(
              child: Stack(children: [
                SizedBox(
                  child: Column(
                    children: [
                      SafeArea(
                        child: Container(
                          color: Color.fromARGB(255, 5, 26, 43),
                          width: 500,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                ' BFiT   ',
                                textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 26, 211, 88),
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                            totalRepeatCount: 5,
                            pause: const Duration(milliseconds: 5000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                        ),
                      ),
                      Container(
                        height: 682,
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                          child: Ink.image(
                            image: AssetImage('images/Final1.jpg'),
                            height: 320,
                            fit: BoxFit.cover,
                            child: InkWell(
                              onTap: () {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 80, 20, 10),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText(
                        'Welcome to the personalised Training App',
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 228, 243, 16),
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    totalRepeatCount: 10000,
                    pause: const Duration(milliseconds: 2000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 600, 20, 10),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Start Your Freaking Journey With BFit...',
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 11, 209, 153),
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    totalRepeatCount: 5,
                    pause: const Duration(milliseconds: 10000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                )
              ]),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.startFloat,
            floatingActionButton: SizedBox(
              height: 65.0,
              width: 65.0,
              child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                  splashColor: Colors.white,
                  elevation: 23,
                  tooltip: 'Get Started',
                  onPressed: () {
                    Navigator.pushNamed(context, 'S0');
                  },
                  child: Icon(Icons.arrow_forward_sharp)),
            ),
          )),
    );
  }
}
