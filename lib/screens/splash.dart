import 'dart:async';
import 'package:codelab_h1/screens/home.dart';
import 'package:codelab_h1/ui_components/h1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
    return Scaffold(
      body: Center(
        child: H1("Helo World!!"),
      ),
    );
  }
}
