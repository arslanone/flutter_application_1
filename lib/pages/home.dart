// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        debugShowCheckedModeBanner: false,
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
      drawer: MyDrawer(),
    );
  }
}
