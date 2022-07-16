// ignore_for_file: override_on_non_overriding_member, library_private_types_in_public_api, prefer_const_constructors, use_build_context_synchronously, sized_box_for_whitespace

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:project/GetStarted.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => Practice())));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            //colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
            //primarySwatch: Colors.green,
            scaffoldBackgroundColor: Color.fromARGB(255, 38, 37, 37)),
        home: Scaffold(
            body: Center(
          child: Stack(
            children: [
              SizedBox(
                  child: Column(children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: SizedBox(
                    child: Image.asset(
                      'images/LoadingGIF.gif',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ])),
              Container(
                padding: EdgeInsets.fromLTRB(140, 310, 20, 10),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('BFiT...',
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 235, 217, 81),
                          fontSize: 35.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                  totalRepeatCount: 5,
                  pause: const Duration(milliseconds: 1000),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 620, 20, 10),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('A Healthy LifeStyle App',
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 68, 255, 236),
                            fontSize: 20.0,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 0),
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
