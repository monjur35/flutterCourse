import 'package:flutter/material.dart';

class GridViewClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GridView.builder(
          itemCount: 100,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(color: Colors.cyanAccent, boxShadow: [
                    BoxShadow(
                        offset: Offset(4, 4),
                        color: Colors.grey.shade100,
                        spreadRadius: 10,
                        blurRadius: 1.0)
                  ]),
                ),
              ),
            );
          }),
    );
  }
}
