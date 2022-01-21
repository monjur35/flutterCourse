import 'package:flutter/material.dart';
import 'package:untitled/models/catalog.dart';

class Day04 extends StatelessWidget {
  final List _post = [
     'post1',
     'post2',
     'post3',
     'post4',
     'post5',
     'post6',
     'post7',
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( 
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return MyRow();
          },
        )

        
        
    );

      
  
}
