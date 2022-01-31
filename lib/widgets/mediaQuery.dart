import 'package:flutter/material.dart';

class MyMediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height :' +
                        MediaQuery.of(context).size.height.toStringAsFixed(2),
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  Text(
                    'Width :' +
                        MediaQuery.of(context).size.width.toStringAsFixed(2),
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  Text(
                    'Aspect Ratio : ' +
                        MediaQuery.of(context)
                            .size
                            .aspectRatio
                            .toStringAsFixed(2),
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  Text(
                    'Orientation : ' + MediaQuery.of(context).orientation.name,
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
