// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, empty_statements, override_on_non_overriding_member, non_constant_identifier_names, use_key_in_widget_constructors, avoid_print, unnecessary_this, avoid_init_to_null, unused_local_variable, unused_import

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/LaodingScreenCalc.dart';

import 'package:flutter/material.dart';

import 'ClorFilter.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  FirstFit createState() => FirstFit();
}

class FirstFit extends State<TextFieldWidget> {
  String? error = null;
  String? error1 = null;
  String? error2 = null;
  dynamic name = "";
  dynamic height = "";
  dynamic weight = "";
  // his widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Ink.image(
                  image: AssetImage('images/Final1.jpg'),
                  height: 800,
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () {},
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Welcome to the Training',
                      textStyle: const TextStyle(
                          color: Colors.yellow,
                          fontSize: 22.0,
                          decoration: TextDecoration.none)),
                ],
                totalRepeatCount: 3,
                pause: const Duration(milliseconds: 5000),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 100, 20, 10),
              child: Text(
                "Enter your Credentials :",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 150, 20, 10),
                child: TextField(
                  maxLength: 50,
                  decoration: InputDecoration(
                      labelText: "Name",
                      errorText: error,
                      hintText: "Enter your Name",
                      labelStyle: TextStyle(fontSize: 24, color: Colors.green),
                      border: UnderlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.white)),
                  onChanged: (text) => setState(() {
                    this.name = text;
                  }),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(10, 250, 20, 10),
                child: TextField(
                  maxLength: 10,
                  decoration: InputDecoration(
                      labelText: "Height",
                      errorText: error1,
                      hintText: "Enter your Height in cm",
                      labelStyle: TextStyle(fontSize: 24, color: Colors.green),
                      border: UnderlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.white)),
                  onChanged: (text) => setState(() {
                    this.height = text;
                  }),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(10, 350, 20, 10),
                child: TextField(
                  maxLength: 10,
                  decoration: InputDecoration(
                      labelText: "Weight",
                      errorText: error2,
                      hintText: "Enter your Weight in kg",
                      labelStyle: TextStyle(fontSize: 24, color: Colors.green),
                      border: UnderlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.white)),
                  onChanged: (text) => setState(() {
                    this.weight = text;
                  }),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(10, 450, 20, 10),
                child: ElevatedButton(
                    child: Text(
                      "Get My Schedule",
                    ),
                    onPressed: () async {
                      if (name != null) error = null;
                      if (height != null) error1 = null;
                      if (weight != null) error2 = null;
                      if (height.toString() != "" &&
                          weight.toString() != "" &&
                          name.toString() != "") {
                        int h = int.parse(height.toString());
                        double h1 = h / 100;
                        h1 = h1 * h1;
                        int w = int.parse(weight.toString());
                        double Bmi = w.toDouble() / h1;
                        CollectionReference users = FirebaseFirestore.instance
                            .collection('ProjectFlutter');
                        users.add({
                          "BMI": Bmi.toString(),
                          "Height": height.toString(),
                          "Name": name.toString(),
                          "Weight": w.toString(),
                          "Status": Bmi <= 18.9
                              ? "***You are UnderWeight"
                              : (Bmi >= 18.9 && Bmi <= 23.9)
                                  ? "***You are Healthy"
                                  : (Bmi >= 24)
                                      ? "***You Are OverWeight As well As Obese"
                                      : ""
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoadingScreenCalc(
                                  BMI: Bmi,
                                  Name: name.toString(),
                                  height: h,
                                  weight: w),
                            ));
                      } else {
                        if (name.toString() == "") {
                          error = "Please enter valid Name";
                        }
                        if (height.toString() == "") {
                          error1 = "Please enter the valid height";
                        }
                        if (weight.toString() == "") {
                          error2 = "Please enter the Valid Weight";
                        }
                        throw 'please enter';
                      }
                    }))
          ]),
        ),
      ),
    );
  }
}
