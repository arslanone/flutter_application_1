import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cards.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/login.dart';
// ignore: unused_import
import 'package:flutter_application_1/pages/new_home';
import 'package:flutter_application_1/widgets/button.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

//Home Screen

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
