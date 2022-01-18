import 'package:flutter/material.dart';
import 'package:untitled/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var days = 30;
    String name = "Monjur";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Monjur",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
      ),
      body: Center(
          child: Container(
        child: Text("Welcome ${days} days of $name"),
      )),
      drawer: HomeDrawer(),
    );
  }
}
