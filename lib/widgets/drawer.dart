// ignore_for_file: prefer_const_constructors
import 'package:flutter_application_1/pages/cards.dart';
import 'package:flutter_application_1/pages/drawing_board.dart';
import 'package:flutter_application_1/pages/todo.dart';
import 'package:flutter_application_1/pages/todo_updated.dart';
import 'package:flutter_application_1/pages/tts.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/home_grid.dart';
import 'package:flutter_application_1/pages/login.dart';

import '../pages/new_home';

///Drawer
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://res.cloudinary.com/dedbcjk2j/image/upload/v1660159670/203151_odtpol.png";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Patient Buddy"),
                  accountEmail: Text("Your #1 Buddy For Essential Tasks"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )),
            ),
            InkWell(
              child: ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.3,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }),
            ),
            InkWell(
              child: ListTile(
                  leading: Icon(
                    CupertinoIcons.hand_draw,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Draw Something",
                    textScaleFactor: 1.3,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DrawingBoard()),
                    );
                  }),
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.speaker_1,
                  color: Colors.white,
                ),
                title: Text(
                  "Text To Speech",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                }),
            ListTile(
                leading: Icon(
                  CupertinoIcons.pen,
                  color: Colors.white,
                ),
                title: Text(
                  "To-Do-List",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => todo()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

// launchMailto() async {
//   final mailtoLink = Mailto(
//     to: ['to@example.com'],
//     cc: ['cc1@example.com', 'cc2@example.com'],
//     subject: 'mailto example subject',
//     body: 'mailto example body',
//   );
//   // Convert the Mailto instance into a string.
//   // Use either Dart's string interpolation
//   // or the toString() method.
//   ('$mailtoLink');
// }
