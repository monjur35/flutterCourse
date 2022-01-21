import 'package:flutter/material.dart';
import 'package:untitled/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var days = 30;
    String name = "Monjur";

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 10.0,
                    spreadRadius: 2),
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 10.0,
                    spreadRadius: 2)
              ]),
          child: Center(
            child: Text(
              'hello',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
    //hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
  }
}
