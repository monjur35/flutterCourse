// ignore_for_file: use_key_in_widget_constructors, unused_element, unused_local_variable

import 'package:flutter/material.dart';

class AnimatedBox extends StatefulWidget {
  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedBox> {
  double boxHeight = 100;
  double boxWidth = 100;

  void _expandBox() {
    setState(() {
      double boxHeight = 400;
      double boxWidth = 400;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: _expandBox,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Center(
          child: Container(
            height: boxHeight,
            width: boxWidth,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
