import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email'),
      ),
      body: Center(
        child: Container(
          child: new Image.network(
            'https://jspang.com/images/next_blog.jpg',
            // scale: 1.0,
            // fit: BoxFit.cover,
            // color: Colors.greenAccent,
            // colorBlendMode: BlendMode.darken,
            repeat: ImageRepeat.repeat,
          ),
          width: 300.0,
          height: 200.0,
          // color: Colors.lightBlue,
        ),
      ),
    );
  }
}