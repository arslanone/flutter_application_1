import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: MyTextPage());
  }
}

class MyTextPage extends StatelessWidget {
  const MyTextPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Declaring Variables to use on the app
    String name = "Patient Buddy App";
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      // ignore: prefer_const_constructors
      body: Center(child: Text("Welcome to Patient Buddy Mobile App")),
    );
  }
}
