import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  final String child;

  MyStory({required this.child});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(5, 20, 5, 0),
      child: Container(
        height: 80,
        width: 80,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.red.shade300),
        child: Center(child: Text(child, style: TextStyle(fontSize: 20))),
      ),
    );
  }
}
