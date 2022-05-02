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
import 'package:flutter_application_1/pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/loginpic.png",
                height: 270,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Welcome To Patient Buddy!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Good Name:",
                          labelText: "Username:"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Your Password:",
                          labelText: "Password:"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // ignore: avoid_print
                        // print("Welcome To Patient Buddy Mobile App!");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text("Get Started"),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
