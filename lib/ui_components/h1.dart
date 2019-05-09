import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  String text;
  final Color color;
  H1(this.text, { this.color = const Color(0xff6b8c42) });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: color
      ),
    );
  }
}
