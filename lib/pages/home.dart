import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: MyTextPage());
  }
}

class MyTextPage extends StatelessWidget {
  const MyTextPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Declaring Variables to use on the app
    String name = "Patient Buddy App";
    return Scaffold(
      appBar: AppBar(
        title: Text(name),

        // for styling of app bar
        //backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        // toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        // titleTextStyle: Theme.of(context).textTheme.headline6),
      ),
      // ignore: prefer_const_constructors
      body: Center(child: Text("Welcome to Patient Buddy Mobile App")),
      drawer: MyDrawer(),
    );
  }
}
