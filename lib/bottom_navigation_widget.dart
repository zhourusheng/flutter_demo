import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/email_screen.dart';
import 'pages/pages_screen.dart';
import 'pages/airplay_screen.dart';

// StatefulWidget具有可变状态(state)的窗口组件（widget）。使用这个要根据变化状态，调整State值
class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  // 重写 initState() 方法
  @override
  void initState(){
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: bottomNavigationColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: bottomNavigationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: bottomNavigationColor,
            ),
            title: Text(
              'Email',
              style: TextStyle(color: bottomNavigationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: bottomNavigationColor,
            ),
            title: Text(
              'Pages',
              style: TextStyle(color: bottomNavigationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: bottomNavigationColor,
            ),
            title: Text(
              'AriPlay',
              style: TextStyle(color: bottomNavigationColor)
            )
          ),
        ],
        currentIndex: _currentIndex,
        // onTap() 事件，默认参数是 index值
        onTap: (int index) {
          setState(() {
            _currentIndex = index;            
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}