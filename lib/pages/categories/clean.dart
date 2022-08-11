// ignore_for_file: prefer_const_constructors, unnecessary_import
import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class clean extends StatefulWidget {
  const clean({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<clean> {
  void stopMusic() {
    audioPlayer.stop();
  }

  void initState() {
    super.initState();
    audioPlayer.open(
      Playlist(audios: [
        Audio(
          "assets/sound/cleanBODY.mp3",
        ),
        Audio(
          "assets/sound/cleanTEETH.mp3",
        ),
        Audio(
          "assets/sound/cleanHAIR.mp3",
        ),
        Audio(
          "assets/sound/cleanHandsMaleFixed.mp3",
        ),
        Audio(
          "assets/sound/cleanNOSE.mp3",
        ),
        Audio(
          "assets/sound/cleanFACE.mp3",
        ),
        Audio(
          "assets/sound/cleanLEGS.mp3",
        ),
        Audio(
          "assets/sound/ear.mp3",
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
                        Image.network(
                            'https://cdn-icons-png.flaticon.com/512/2913/2913557.png'),
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
                                'Let The Other Know You Need Help',
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
                                  'Ask Your Loved Ones For Cleaning',
                                  textAlign: TextAlign.start,
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
                                  'assets/images/body.png',
                                  height: 120,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Clean Body',
                                    style: cardTextStyle,
                                  ),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(0);
                            Timer(Duration(milliseconds: 1650),
                                () => stopMusic());
                          },
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(1);
                            Timer(Duration(milliseconds: 1700),
                                () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/teeth.png',
                                  height: 128,
                                  alignment: Alignment.center,
                                ),
                                Text(
                                  'Clean Teeth',
                                  textAlign: TextAlign.center,
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(milliseconds: 1500),
                                () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/washhead.png',
                                  height: 128,
                                ),
                                Text(
                                  'Wash Head',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(3);
                            Timer(Duration(milliseconds: 1800),
                                () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/cleanhand.png',
                                  height: 128,
                                ),
                                Text(
                                  'Wash Hands',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(4);
                            Timer(Duration(milliseconds: 1700),
                                () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/cleannose.png',
                                  height: 128,
                                ),
                                Text(
                                  'Clean Nose',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(5);
                            Timer(Duration(milliseconds: 1800),
                                () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/washface.png',
                                  height: 128,
                                ),
                                Text(
                                  'Wash Face',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(6);
                            Timer(Duration(milliseconds: 1800),
                                () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/cleanlegs.png',
                                  height: 128,
                                ),
                                Text(
                                  'Clean Legs',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(7);
                            Timer(Duration(milliseconds: 1800),
                                () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/cleanear.png',
                                  height: 128,
                                ),
                                Text(
                                  'Clean Ear',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
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
