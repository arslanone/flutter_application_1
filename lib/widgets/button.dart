import 'package:flutter/material.dart';

class ButtonNew extends StatelessWidget {
  const ButtonNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 200,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          color: Colors.deepPurple,
        ));
  }
}
