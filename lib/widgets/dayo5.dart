import 'package:flutter/material.dart';

class Day05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 300,
              width: 300,
              color: Colors.redAccent,
              child: Image.asset(
                'assets/images/login_image.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ));
  }
}
