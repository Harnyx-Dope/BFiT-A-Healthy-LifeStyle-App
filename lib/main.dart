// ignore_for_file: prefer_const_constructors, unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/FirstFit.dart';
import 'package:project/SplashScreen.dart';
import 'GetStarted.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          'S0': (context) => TextFieldWidget(),
        },
      ),
    ),
  );
}
