import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRow extends StatelessWidget {
  final String child;
  MyRow({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.indigo.shade100,
            boxShadow: [
              BoxShadow(
                  offset: Offset(4.0, 4.0),
                  color: Colors.grey.shade400,
                  blurRadius: 5,
                  spreadRadius: 0.5)
            ]),
        child: Center(
          child: Text(
            child,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        height: 200,
      ),
    );
  }
}
