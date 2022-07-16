// ignore_for_file: avoid_unnecessary_containers, avoid_print, non_constant_identifier_names, prefer_const_constructors, unused_local_variable, prefer_const_constructors_in_immutables, use_build_context_synchronously, unused_element

import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  Contact({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Color.fromARGB(255, 234, 79, 2),
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.black),
        home: Scaffold(
            body: Stack(children: [
          Image(
            image: AssetImage('images/Final2.jpg'),
            width: MediaQuery.of(context).size.width,
            height: 800,
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Contact For Any Query...',
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 198, 114, 23),
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
                totalRepeatCount: 55,
                pause: const Duration(milliseconds: 5000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
            // ignore: deprecated_member_use
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 200, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Harsh Vardhan Gupta',
                  textStyle: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 10000,
              pause: const Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 240, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'phno - 7991393394',
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 198, 114, 23),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 5000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          // ignore: deprecated_member_use

          Container(
            padding: EdgeInsets.fromLTRB(10, 280, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Abhi Gupta',
                  textStyle: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 10000,
              pause: const Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 320, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'phno - 7007290183',
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 198, 114, 23),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 5000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          // ig
          Container(
            padding: EdgeInsets.fromLTRB(10, 360, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Yugal Gautam',
                  textStyle: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 10000,
              pause: const Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 400, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'phno - 9557891198',
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 198, 114, 23),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 5000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          // ig
          Container(
            padding: EdgeInsets.fromLTRB(10, 440, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Arif Afzal',
                  textStyle: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 10000,
              pause: const Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 480, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'phno - 7549286256',
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 198, 114, 23),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 5000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          // ig
          Container(
            padding: EdgeInsets.fromLTRB(10, 520, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Surendra Singh',
                  textStyle: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 10000,
              pause: const Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 560, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'phno - 9336414967',
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 198, 114, 23),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 5000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          // ig
          Container(
            padding: EdgeInsets.fromLTRB(10, 600, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Uttam Yadav',
                  textStyle: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 10000,
              pause: const Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 640, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'phno - 6361147597',
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 198, 114, 23),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 5000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          // ig
          Container(
            padding: EdgeInsets.fromLTRB(10, 680, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Ritu',
                  textStyle: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 10000,
              pause: const Duration(milliseconds: 100),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 720, 20, 10),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'phno - 6375128621',
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 198, 114, 23),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 5000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          // ig
        ])));
  }
}
