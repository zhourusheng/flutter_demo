import 'package:flutter/material.dart';
// 引入子页面
// import 'each_view.dart';

class BottomAppBarDemo extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  // List<Widget> _eachView; // 创建视图数组
  // int _index = 0; // 数组索引，通过改变索引值改变视图

  // @override
  // void initState() {
  //   super.initState();
  //   _eachView = List();
  //   _eachView
  //     ..add(EachView('Home'))
  //     ..add(EachView('Me'));
  // }

  @override
  // Widget build(BuildContext, context) {  此处多写一个, 报错
  Widget build(BuildContext context) {
    return Scaffold(
      // body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        tooltip: 'hahaha',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.airport_shuttle),
              color: Colors.white,
              onPressed: () {
                
              },
            )
          ],
        ),
      ),
    );
  }
}