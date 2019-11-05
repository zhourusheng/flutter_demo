import 'package:flutter/material.dart';

// StatelessWidget(不可变控件)
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Home2222',
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 255, 150, 150),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid
            ),
          ),
          alignment: Alignment.topLeft,
          width: 500.0,
          height: 400.0,
          // color: Colors.lightBlue,
          padding: EdgeInsets.fromLTRB(50.0, 10.0, 0.0, 0.0),
          margin: EdgeInsets.all(50.0),
          decoration: new BoxDecoration(
            gradient: LinearGradient(
              colors:[Colors.lightBlue, Colors.greenAccent, Colors.purple]
            ),
            border: Border.all(
              width: 2.0,
              color: Colors.red
            )
          ),
        )
      ),
    );
  }
}