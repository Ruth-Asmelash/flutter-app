// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myapp/loginpage.dart';

import 'chat.dart';

void main() {
  runApp(MaterialApp(
    routes: {'//': (context) => Chat()},
  ));
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 300),
          alignment: Alignment.bottomCenter,
          width: 600,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LoginPag(Icon(Icons.person), "username"),
              LoginPag(Icon(Icons.lock), "password"),
              Container(
                  width: 150,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "signup",
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
