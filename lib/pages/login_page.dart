import 'package:flutter/material.dart';
import 'package:untitled/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userName = "";
  var onChanged = false;
  final _formKey=GlobalKey<FormState>();
  logIn(BuildContext context) async{
    if(_formKey.currentState?.validate()) {
      setState(() {
        onChanged = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        onChanged = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
            const SizedBox(height: 20),
            Text(
              "Welcome $userName",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(children: [
                TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter username", labelText: "UserName"),
                     validator: (String? value){
                     if(value!.isEmpty ){
                       return "Username can't be empty";
                     }
                     return null;
                    },
                    onChanged: (value) {
                      userName = value;
                      setState(() {});
                    }),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                  validator: (String? value){
                    if(value!.isEmpty ){
                      return "Password can't be empty";
                    }
                    else if(value.length<6){
                      return "Password must be 6 characters";
                    }
                    return null;
                  },
                )
              ]),
            ),
            const SizedBox(height: 50),
            Material(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(onChanged ? 50 : 8),
              child: InkWell(
                splashColor: Colors.red,
                onTap: ()=>logIn(context),
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: onChanged ? 50 : 150,
                  height: 40,
                  alignment: Alignment.center,
                  child: onChanged
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                        ),
                ),
              ),
            ),
          ]),
        ));
  }
}
