import 'package:flutter/material.dart';
import 'package:untitled/models/catalog.dart';
import 'package:untitled/widgets/story.dart';

class Day04 extends StatelessWidget {
  final List _post = ['post1', 'post2', 'post3', 'post4', 'post5', 'post6'];
  final List _story = ['post1', 'post2', 'post3', 'post4', 'post5', 'post6'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
      children: [
        Center(
          child: Container(
            height: 90,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _story.length,
                itemBuilder: (context, index) {
                  return MyStory(child: _story[index]);
                }),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _post.length,
            itemBuilder: (context, index) {
              return MyRow(child: index.toString());
            },
          ),
        ),
      ],
    ));
  }
}
