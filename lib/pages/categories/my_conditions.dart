// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/drawer.dart';

class MyCondition extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyCondition> {
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
                        Image.asset('assets/images/medicalcondition.png'),
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
                                'Express Your Current Condition',
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
                                  'Let Your Loved Ones Help You!',
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
                                  'assets/images/hungry.png',
                                  height: 120,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'I Am Hungry',
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
                                  'assets/images/water.png',
                                  height: 128,
                                  alignment: Alignment.center,
                                ),
                                Text(
                                  'I Need Water',
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
                                  'assets/images/MyCondition//Ok.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Am Okay',
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
                                  'assets/images/MyCondition//Pain.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Am In Pain',
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
                                  'assets/images/MyCondition/Cold.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Am Cold',
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
                                  'assets/images/MyCondition/Hot.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Feel Hot',
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
                                  'assets/images/MyCondition/angry.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Am Angry',
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
                                  'assets/images/MyCondition/dontKnow.png',
                                  height: 128,
                                ),
                                Text(
                                  "I Don't Know",
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
                                  'assets/images/MyCondition/Better.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Am Good',
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
                                  'assets/images/MyCondition/Worse.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Feel Worse',
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
                                  'assets/images/MyCondition/afraid.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Am Afraid',
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
                                  'assets/images/MyCondition/anxious.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Am Anxious',
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
                                  'assets/images/MyCondition/fever.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Have Fever',
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
                                  'assets/images/MyCondition/I_am_tense.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Feel Tense',
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
                                  'assets/images/MyCondition/tired.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Feel Tired',
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
                                  'assets/images/MyCondition/NoUnderstand.png',
                                  height: 128,
                                ),
                                Text(
                                  "I Don't Understand",
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
                                  'assets/images/MyCondition/nausea.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Am Having Nausea',
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
                                  'assets/images/MyCondition/dizzy.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Feel Dizzy',
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
                                  'assets/images/MyCondition/disappointed.png',
                                  height: 128,
                                ),
                                Text(
                                  'I Am Disapppinted',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        // InkWell(
                        //   onTap: () {
                        //     audioPlayer.playlistPlayAtIndex(2);
                        //     Timer(Duration(seconds: 10), () => stopMusic());
                        //   },
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8)),
                        //     elevation: 4,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: <Widget>[
                        //         Image.asset(
                        //           'assets/images/clock.png',
                        //           height: 128,
                        //         ),
                        //         Text(
                        //           'Time',
                        //           style: cardTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     audioPlayer.playlistPlayAtIndex(2);
                        //     Timer(Duration(seconds: 10), () => stopMusic());
                        //   },
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8)),
                        //     elevation: 4,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: <Widget>[
                        //         Image.asset(
                        //           'assets/images/remote.png',
                        //           height: 128,
                        //         ),
                        //         Text(
                        //           'Remote',
                        //           style: cardTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     audioPlayer.playlistPlayAtIndex(2);
                        //     Timer(Duration(seconds: 10), () => stopMusic());
                        //   },
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8)),
                        //     elevation: 4,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: <Widget>[
                        //         Image.asset(
                        //           'assets/images/tvoff.png',
                        //           height: 128,
                        //         ),
                        //         Text(
                        //           'Turn Off TV',
                        //           style: cardTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     audioPlayer.playlistPlayAtIndex(2);
                        //     Timer(Duration(seconds: 10), () => stopMusic());
                        //   },
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8)),
                        //     elevation: 4,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: <Widget>[
                        //         Image.asset(
                        //           'assets/images/tvon.png',
                        //           height: 128,
                        //         ),
                        //         Text(
                        //           'TUrn On TV',
                        //           style: cardTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     audioPlayer.playlistPlayAtIndex(2);
                        //     Timer(Duration(seconds: 10), () => stopMusic());
                        //   },
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8)),
                        //     elevation: 4,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: <Widget>[
                        //         Image.asset(
                        //           'assets/images/rest.jpg',
                        //           height: 128,
                        //         ),
                        //         Text(
                        //           'Let Me Rest',
                        //           style: cardTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     audioPlayer.playlistPlayAtIndex(2);
                        //     Timer(Duration(seconds: 10), () => stopMusic());
                        //   },
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8)),
                        //     elevation: 4,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: <Widget>[
                        //         Image.asset(
                        //           'assets/images/silent.png',
                        //           height: 128,
                        //         ),
                        //         Text(
                        //           'I Need Silence',
                        //           style: cardTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     audioPlayer.playlistPlayAtIndex(2);
                        //     Timer(Duration(seconds: 10), () => stopMusic());
                        //   },
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8)),
                        //     elevation: 4,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: <Widget>[
                        //         Image.asset(
                        //           'assets/images/physio.png',
                        //           height: 128,
                        //         ),
                        //         Text(
                        //           'Massage',
                        //           style: cardTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     audioPlayer.playlistPlayAtIndex(2);
                        //     Timer(Duration(seconds: 10), () => stopMusic());
                        //   },
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8)),
                        //     elevation: 4,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: <Widget>[
                        //         Image.asset(
                        //           'assets/images/massage-legs.jpg',
                        //           height: 128,
                        //         ),
                        //         Text(
                        //           'Press Legs',
                        //           style: cardTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     audioPlayer.playlistPlayAtIndex(2);
                        //     Timer(Duration(seconds: 10), () => stopMusic());
                        //   },
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8)),
                        //     elevation: 4,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: <Widget>[
                        //         Image.asset(
                        //           'assets/images/face.png',
                        //           height: 128,
                        //         ),
                        //         Text(
                        //           'Clean Face',
                        //           style: cardTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
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
