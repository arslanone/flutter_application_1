// ignore_for_file: unused_import, prefer_const_constructors
// // ignore: prefer_const_constructors
// child: Center(
//   // ignore: prefer_const_constructors
//   child: Text(
//     "We Welcome You!",
//     style: TextStyle(
//         fontSize: 34,
//         color: Color.fromARGB(255, 93, 52, 50),
//         fontWeight: FontWeight.bold),

// use google fonts and assets in pubspec
//   ),
// ),

import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/loginpic.png",
            fit: BoxFit.contain,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
