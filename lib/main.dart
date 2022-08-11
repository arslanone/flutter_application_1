import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cards.dart';
// ignore: unused_import
import 'package:flutter_application_1/pages/new_home';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

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
      home: AnimatedSplashScreen(
        splash: Image.network(
            "https://res.cloudinary.com/dedbcjk2j/image/upload/v1660168424/Add_a_heading_xrdcjp.png"),
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.sizeTransition,
        backgroundColor: Colors.white,
        duration: 1800,
      ),
      // initialRoute: "/",
      // // ignore: prefer_const_literals_to_create_immutables
      // routes: {
      //   "/": (context) => HomeScreen(),
      //   "/home": (context) => HomeScreen(),
      // },
    );
  }
}
