// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RichTexttttt extends StatelessWidget {
  const RichTexttttt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            color: Colors.grey[100],
          ),
          RichText(
            text: TextSpan(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
