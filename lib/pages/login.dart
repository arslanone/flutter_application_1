// ignore_for_file: unused_import, prefer_const_constructors, avoid_web_libraries_in_flutter
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
import 'package:flutter_application_1/pages/cards.dart';
import 'package:flutter_application_1/pages/home.dart';

import '../widgets/drawer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  // final _formKey = GlobalKey<FormState>();

  moveTohome(BuildContext context) async {
    // if (_formKey.currentState!.validate()) {
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    // used to navigate through screens
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
    setState(() {
      changeButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
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
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return "Username cannot be empty";
                        //   }

                        //   return null;
                        // },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Enter Your BMI & Blood Group:",
                            labelText: "BMI & Blood Group:"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Feild cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }

                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Enter Your Age:",
                            labelText: "Your Age:"),
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return "Password cannot be empty";
                        //   } else if (value.length < 6) {
                        //     return "Password length should be atleast 6";
                        //   }

                        //   return null;
                        // },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     // ignore: avoid_print
                      //     // print("Welcome To Patient Buddy Mobile App!");
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => HomePage()));
                      //   },
                      //   child: Text("Get Started"),
                      // ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                            onTap: () => moveTohome(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: changeButton ? 50 : 150,
                              height: 50,
                              alignment: Alignment.center,
                              child: changeButton
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Get Started",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                              decoration: BoxDecoration(),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
