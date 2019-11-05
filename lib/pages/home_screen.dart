import 'package:flutter/material.dart';

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
            'Home2222, 非常喜欢前端，并且愿意为此奋斗一生。我希望可以出1000集免费教程。',
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
          alignment: Alignment.center,
          width: 500.0,
          height: 400.0,
          color: Colors.lightBlue,
          padding: EdgeInsets.all(10.0),
        )
      ),
    );
  }
}