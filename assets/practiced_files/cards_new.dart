// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient Buddy"),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('assets/images/head.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SafeArea(
              child: Column(children: <Widget>[
                Container(
                  height: 64,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(padding: EdgeInsets.all(6.0)),
                      Image.network(
                          'https://cdn-icons.flaticon.com/png/512/2339/premium/2339874.png?token=exp=1652644544~hmac=ffd6059c086b4db481c5d5b2ffba2cff') // CircleAvatar(
                      //   radius: 32,
                      //   backgroundImage: NetworkImage(
                      //       'https://cdn-icons.flaticon.com/png/512/2339/premium/2339874.png?token=exp=1652644544~hmac=ffd6059c086b4db481c5d5b2ffba2cff'),
                      // ),
                      ,
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Hi, Welcome To Patient Buddy!",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 24),
                          ),
                          Padding(padding: EdgeInsets.all(3)),
                          Text(
                            "Make Your Life Easy With Us.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
          GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              primary: false,
              children: [
                Card(
                  child: Column(
                    children: [
                      Image.network(
                        'https://cdn-icons-png.flaticon.com/512/2302/2302715.png',
                      )
                    ],
                  ),
                )
              ],
              crossAxisCount: 2)
        ],
      ),
    );
  }
}
