import 'package:flutter/material.dart';

class PagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pages'),
      ),
      body: Center(
        child: Container(
          height: 200.0,
          child: new ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              new Container(
                width:180.0,
                color: Colors.lightBlue,
              ),
              new Container(
                width:180.0,
                color: Colors.amber,
              ),
              new Container(
                width:180.0,
                color: Colors.deepOrange,
              ),
              new Container(
                width:180.0,
                color: Colors.deepPurpleAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}