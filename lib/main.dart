import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "Recursive_Casual-Bold",
          scaffoldBackgroundColor: const Color(0xFFE7004C)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Connection(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(150),
            child: Image.asset(
              "images/logo.png",
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Column(
              children: [
                Text(
                  "Connecter ",
                  style: TextStyle(fontSize: 60),
                ),
                Container(
                    child: Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(200)),
                  child: Image.asset("images/icon_user.png"),
                )),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          )
        ],
      ),
    );
  }
}

class Connection extends StatefulWidget {
  @override
  _ConnectionState createState() => _ConnectionState();
}

class _ConnectionState extends State<Connection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Enter your username',
              fillColor: Colors.white,
              filled: true),
        ),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            fillColor: Colors.white,
            filled: true,
          ),
        ),
        Container(
          child: Column(
            children: [
              Text(
                "connecter",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "inscription",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ], mainAxisAlignment: MainAxisAlignment.center),
    );
  }
}
