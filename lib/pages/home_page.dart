import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var days = 30;
    String name = "Monjur";
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Monjur"),
      ),
      body: Center(
          child: Container(
        child: Text("Welcome ${days} days of $name"),
      )),
      drawer: Drawer(),
    );
  }
}
