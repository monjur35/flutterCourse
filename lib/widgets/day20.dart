// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';

class TimerCLass extends StatefulWidget {
  @override
  _TimerCLassState createState() => _TimerCLassState();
}

class _TimerCLassState extends State<TimerCLass> {
  int timeLeft = 5;
  void _startCount() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            timeLeft == 0 ? "DONE" : timeLeft.toString(),
            style: TextStyle(fontSize: 70),
          ),
          MaterialButton(
            onPressed: _startCount,
            child: Text(
              "S T A R T",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.deepOrange,
          )
        ],
      )),
    );
  }
}
