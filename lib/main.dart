import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(primarySwatch: Colors.indigo),
      initialRoute: "/home",
      routes: {
        "/":(context)=>LoginPage(),
        "/home":(context)=>HomePage()
      },
    );
  }
}
