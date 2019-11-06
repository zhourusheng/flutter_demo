import 'package:flutter/material.dart';

// StatelessWidget(不可变控件)
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[

        ],
      ),
    );

    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new Image.asset(
            'assets/images/bg.png',
            height: 240,
            fit: BoxFit.cover,
          )
        ],
      )
    );
  }
}