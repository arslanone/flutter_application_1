import 'package:flutter/material.dart';

class NewAppBar extends StatelessWidget {
  const NewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "Patient Buddy";

    return AppBar(
        title: Text(name),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.deepPurple),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6);
  }
}
