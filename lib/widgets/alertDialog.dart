// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
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
          return CupertinoAlertDialog(
            // backgroundColor: Colors.lightBlueAccent,
            title: Text(
              'Alert !!',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            //titlePadding: EdgeInsets.all(10),
            content: Text('Are you sure ?'),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: Text('Yes'),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              )
            ],
          );
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
