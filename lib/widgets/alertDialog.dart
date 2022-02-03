// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  @override
  _AlertState createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: MaterialButton(
          onPressed: _showDialog,
          color: Colors.lightBlue,
          child: Text('Press Me',
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
    );
  }
}
