// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:untitled/pages/account.dart';
import 'package:untitled/pages/feed.dart';
import 'package:untitled/pages/home_page.dart';

class MyTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text(
              'Tab Bar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          body: Column(
            children: [
              TabBar(tabs: [
                Tab(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.blueGrey,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.feed_outlined,
                    color: Colors.blueGrey,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person_add_alt_1_outlined,
                    color: Colors.blueGrey,
                  ),
                ),
              ]),
              Expanded(
                  child: TabBarView(children: [HomePage(), Feed(), Account()]))
            ],
          ),
        ));
  }
}
