import 'package:flutter/material.dart';
import 'package:untitled/utils/MyRoutes.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/widgets/Day07.dart';
import 'package:untitled/widgets/Day08.dart';
import 'package:untitled/widgets/day01.dart';
import 'package:untitled/widgets/day03.dart';
import 'package:untitled/widgets/day04.dart';
import 'package:untitled/widgets/dayo5.dart';
import 'package:untitled/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.day8Route,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.day1Route: (context) => Day01(),
        MyRoutes.day3Route: (context) => Day03(),
        MyRoutes.day4Route: (context) => Day04(),
        MyRoutes.day5Route: (context) => Day05(),
        MyRoutes.day7Route: (context) => GridViewClass(),
        MyRoutes.day8Route: (context) => GestureDetectorss()
      },
    );
  }
}
