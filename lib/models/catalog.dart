import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green.shade100,
            boxShadow: [
              BoxShadow(
                  offset: Offset(4.0, 4.0),
                  color: Colors.grey.shade400,
                  blurRadius: 5,
                  spreadRadius: 0.5)
            ]),
        height: 200,
      ),
    );
  }
}
