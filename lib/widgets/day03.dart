import 'package:flutter/material.dart';

class Day03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 50,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          Container(
            width: 50,
            height: 100,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
