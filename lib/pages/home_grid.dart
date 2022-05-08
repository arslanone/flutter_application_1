// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
// //
// void main() => runApp(
//   MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: HomePage()
//   )
// );

class Hom extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Hom> {
  final List<String> _listItem = [
    'assets/images/loginpic.png',
    'assets/images/loginpic.png',
    'assets/images/loginpic.png',
    'assets/images/loginpic.png',
    'assets/images/loginpic.png',
    'assets/images/loginpic.png',
    'assets/images/loginpic.png',
    'assets/images/loginpic.png',
    'assets/images/loginpic.png',
    'assets/images/loginpic.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient Buddy"),
      ),

      drawer: MyDrawer(), backgroundColor: Color.fromARGB(77, 199, 192, 192),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: Icon(Icons.menu),
      //   title: Text("Home"),
      //   actions: <Widget>[
      //     Padding(
      //       padding: EdgeInsets.all(10.0),
      //       child: Container(
      //         width: 36,
      //         height: 30,
      //         decoration: BoxDecoration(
      //             color: Colors.grey[800],
      //             borderRadius: BorderRadius.circular(10)),
      //         child: Center(child: Text("0")),
      //       ),
      //     )
      //   ],
      // ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/loginpic.png'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Manage Your Health",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Center(
                            child: Text(
                          "Shop Now",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: _listItem
                    .map((item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(item),
                                    fit: BoxFit.cover)),
                            // child: Transform.translate(
                            //   offset: Offset(50, -50),
                            //   child: Container(
                            //     margin: EdgeInsets.symmetric(
                            //         horizontal: 65, vertical: 63),
                            //     decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(10),
                            //         color: Colors.white),
                            //     child: Icon(
                            //       Icons.bookmark_border,
                            //       size: 15,
                            //     ),
                            //   ),
                            // ),
                          ),
                        ))
                    .toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
