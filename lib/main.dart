import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:ola/book.dart';
import 'package:ola/splash.dart';
import 'home.dart';
import "cnfbook.dart";

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
