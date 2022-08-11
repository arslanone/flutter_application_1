// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_import

import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/categories/call.dart';
import 'package:flutter_application_1/pages/categories/chat.dart';
import 'package:flutter_application_1/pages/categories/clean.dart';
import 'package:flutter_application_1/pages/categories/i_need.dart';
import 'package:flutter_application_1/pages/categories/my_conditions.dart';
import 'package:flutter_application_1/pages/categories/pain.dart';
import 'package:flutter_application_1/pages/drawing_board.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/todo.dart';
import 'package:flutter_application_1/pages/todo_updated.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void stopMusic() {
    audioPlayer.stop();
  }

  void initState() {
    super.initState();
    audioPlayer.open(
      Playlist(audios: [
        Audio(
          "assets/sound/calldoctor.mp3",
        ),
        Audio(
          "assets/sound/sinner_like_me.mp3",
        ),
        Audio(
          "assets/sound/beautiful_crazy.mp3",
        ),
      ]),
      autoStart: false,
      showNotification: false,
    );
  }

  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;

    // style
    // ignore: prefer_const_constructors
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 18,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Buddy'),
      ),
      drawer: MyDrawer(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/header.d')),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset('assets/images/waving-hand.png'),
                        SizedBox(
                          width: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Text(
                                'Hi, Welcome To Patient Buddy',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              SafeArea(
                                child: Text(
                                  'Manage Your Health Schedule With Patient Buddy',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        InkWell(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/mental-health.png',
                                  height: 120,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'I Need',
                                    style: cardTextStyle,
                                  ),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => INeed()),
                            );
                            // audioPlayer.playlistPlayAtIndex(0);
                            // Timer(Duration(seconds: 2), () => stopMusic());
                          },
                        ),
                        InkWell(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/2302/2302715.png',
                                    height: 128,
                                    alignment: Alignment.center,
                                  ),
                                  Text(
                                    'My Condition',
                                    textAlign: TextAlign.center,
                                    style: cardTextStyle,
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyCondition()),
                              );
                            }),
                        InkWell(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/call.png',
                                    height: 128,
                                  ),
                                  Text(
                                    'Call Him',
                                    style: cardTextStyle,
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CallHim()),
                              );
                            }),
                        InkWell(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/2913/2913564.png',
                                    height: 128,
                                  ),
                                  Text(
                                    'Clean & Hygiene',
                                    style: cardTextStyle,
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => clean()),
                              );
                            }),
                        InkWell(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/muscle-pain.png',
                                    height: 120,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Pain & Itching',
                                      style: cardTextStyle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => pain()),
                              );
                            }),
                        InkWell(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/pronunciation.png',
                                    height: 128,
                                  ),
                                  Text(
                                    'Communication',
                                    style: cardTextStyle,
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => chat()),
                              );
                            }),
                        InkWell(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/pencil.png',
                                    height: 128,
                                  ),
                                  Text(
                                    'Write Down',
                                    style: cardTextStyle,
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DrawingBoard()),
                              );
                            }),
                        InkWell(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/todo.png',
                                    height: 128,
                                  ),
                                  Text(
                                    'To-Do-List',
                                    style: cardTextStyle,
                                  )
                                ],
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
