import 'package:flutter/material.dart';
import 'package:untitled/pages/account.dart';
import 'package:untitled/pages/feed.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/messege.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({Key? key}) : super(key: key);

  _BottomState createState() => _BottomState();
}

class _BottomState extends State<NavigationBottom> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [HomePage(), Feed(), Messege(), Account()];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.amberAccent,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.feed_outlined), label: "feed"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "messege"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: "account"),
        ],
      ),
    );
  }
}
