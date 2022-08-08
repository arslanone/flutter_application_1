// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/drawer.dart';

class INeed extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<INeed> {
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
                        Image.asset('assets/images/pencil.png'),
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
                                'Please Click On Relevent Picture',
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
                                  'And Let The Assitant Call For You',
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
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/3304/3304567.png',
                                  height: 120,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Call Doctor',
                                    style: cardTextStyle,
                                  ),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(0);
                            Timer(Duration(milliseconds: 1500),
                                () => stopMusic());
                          },
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(1);
                            Timer(Duration(seconds: 5), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/medicine.png',
                                  height: 128,
                                  alignment: Alignment.center,
                                ),
                                Text(
                                  'Give Me Medicines',
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
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/do-not-go-out.png',
                                  height: 128,
                                ),
                                Text(
                                  'Dont Go',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/passenger.png',
                                  height: 128,
                                ),
                                Text(
                                  'Help Me Sit',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/sleeping.png',
                                  height: 128,
                                ),
                                Text(
                                  'Lay Me Down',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/turn-right.jpg',
                                  height: 128,
                                ),
                                Text(
                                  'Turn Right',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/turn-left.jpg',
                                  height: 128,
                                ),
                                Text(
                                  'Turn Left',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/iv-bag.png',
                                  height: 128,
                                ),
                                Text(
                                  'Remove Drip',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/canula.png',
                                  height: 128,
                                ),
                                Text(
                                  'Change Canula',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/pillow.png',
                                  height: 128,
                                ),
                                Text(
                                  'Pillow',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/bed-sheets.png',
                                  height: 128,
                                ),
                                Text(
                                  'Blanket',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/sunglasses.png',
                                  height: 128,
                                ),
                                Text(
                                  'Sunglasses',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/comb.png',
                                  height: 128,
                                ),
                                Text(
                                  'Comb',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/lightbulbon.png',
                                  height: 128,
                                ),
                                Text(
                                  'Turn On Light',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/light-bulb.png',
                                  height: 128,
                                ),
                                Text(
                                  'Turn Off Light',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/urine.png',
                                  height: 128,
                                ),
                                Text(
                                  'Urine',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/toilet.png',
                                  height: 128,
                                ),
                                Text(
                                  'Need To Use Toilet',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/shower.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Need Shower',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/calender.png',
                                  height: 128,
                                ),
                                Text(
                                  'Date',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/calender.png',
                                  height: 128,
                                ),
                                Text(
                                  'Date',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/calender.png',
                                  height: 128,
                                ),
                                Text(
                                  'Date',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/calender.png',
                                  height: 128,
                                ),
                                Text(
                                  'Date',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/calender.png',
                                  height: 128,
                                ),
                                Text(
                                  'Date',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/calender.png',
                                  height: 128,
                                ),
                                Text(
                                  'Date',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/calender.png',
                                  height: 128,
                                ),
                                Text(
                                  'Date',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/calender.png',
                                  height: 128,
                                ),
                                Text(
                                  'Date',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/calender.png',
                                  height: 128,
                                ),
                                Text(
                                  'Date',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/calender.png',
                                  height: 128,
                                ),
                                Text(
                                  'Date',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            audioPlayer.playlistPlayAtIndex(2);
                            Timer(Duration(seconds: 10), () => stopMusic());
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/calender.png',
                                  height: 128,
                                ),
                                Text(
                                  'Date',
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
