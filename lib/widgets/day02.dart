import 'package:flutter/material.dart';

class Day02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              //flex: 3,
              child: Container(
            color: Colors.blueAccent,
          )),
          Expanded(
              // flex: 2,
              child: Container(
            color: Colors.blueGrey,
          )),
          Expanded(
              //flex: 2,
              child: Container(
            color: Colors.lightBlueAccent,
          ))
        ],
      ),
    );
  }
}
