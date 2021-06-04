import 'dart:async';

import "package:flutter/material.dart";
import 'package:ola/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Home())));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Image(
            width: double.infinity,
            height: double.infinity,
            image: AssetImage("images/Splash Screen/splash.jpeg"),
          ),
        ),
      ),
    );
  }
}
