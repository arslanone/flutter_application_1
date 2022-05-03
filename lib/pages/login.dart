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

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
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
                "Welcome, $name!",
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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
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
                    // ElevatedButton(
                    //   onPressed: () {
                    //     // ignore: avoid_print
                    //     // print("Welcome To Patient Buddy Mobile App!");
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => HomePage()));
                    //   },
                    //   child: Text("Get Started"),
                    // )
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          alignment: Alignment.center,
                          height: 40,
                          width: 120,
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(8)),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
