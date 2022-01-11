import 'package:flutter/material.dart';
import 'package:untitled/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ="";
  @override
  Widget build(BuildContext context) {

    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
            const SizedBox(height: 20),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(hintText: "Enter username", labelText: "UserName"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  }
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                )
              ]),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
                child: Text("Login"),
                style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                })
          ]),
        ));
  }
}
