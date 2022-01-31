// ignore_for_file: use_key_in_widget_constructors, unused_element, unused_local_variable

import 'package:flutter/material.dart';

class AnimatedBox extends StatefulWidget {
  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedBox> {
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.yellow;

  double boxX = -1;
  double boxY = -1;

  void _expandBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }

  void _changeColor() {
    setState(() {
      _expandBox();
      boxColor = Colors.red;
    });
  }

  void _moveBox() {
    setState(() {
      //  _changeColor();
      boxX = 1;
      boxY = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: _moveBox,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 10),
            alignment: Alignment(boxX, boxX),
            curve: Curves.easeInCubic,
            child: Container(
              height: boxHeight,
              width: boxWidth,
              decoration: BoxDecoration(
                  color: boxColor, borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }
}
