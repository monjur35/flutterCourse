// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:untitled/pages/account.dart';
import 'package:untitled/pages/home_page.dart';

class Feed extends StatelessWidget {
  final imageUrl =
      "https://avatars.githubusercontent.com/u/70682148?s=400&u=6fdd99d9faca1dccf22c9f03b608dbffeecf3cd5&v=4";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.redAccent,
            centerTitle: true,
            title: Text('Sliver'),
            expandedHeight: 200,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 400,
                  color: Colors.black12,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 400,
                  color: Colors.black12,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 400,
                  color: Colors.black12,
                ),
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.red[300],
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.redAccent),
                  margin: EdgeInsets.zero,
                  accountName: const Text(
                    "Monjur",
                    textScaleFactor: 1.3,
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: const Text(
                    "monju@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
                },
                leading: Icon(Icons.home_outlined),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(Icons.feed),
                title: Text(
                  'Feed',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Feed(),
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Account',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Account(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
