import 'package:flutter/material.dart';

/**
 * bottomNavigation 底部导航条
 *   */ 
import 'bottom_navigation_widget.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bottomNavigationBar',
      theme: ThemeData.light(),
      home: BottomNavigationWidget()
    );
  }
}

/**
 * appBar顶部导航条
 *   */ 
// class MyApp extends StatelessWidget {
//   var titleList = ['NEWS','LABS'];
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       theme: ThemeData(
//         primaryColor: Colors.white
//       ),
//       home: new DefaultTabController(
//         length: titleList.length,
//         child: new Scaffold(
//           appBar: new AppBar(
//             elevation: 0.0,
//             title: new TabBar(
//               isScrollable: false,
//               unselectedLabelColor: Colors.black26,
//               labelColor: Colors.black,
//               labelStyle: TextStyle(fontSize: 18.0),
//               indicatorSize: TabBarIndicatorSize.label,
//               indicatorWeight: 4.0,
//               indicatorColor: Colors.yellow,
//               indicatorPadding: EdgeInsets.only(bottom: 1.0),
//               tabs: titleList.map((String text) {
//                 return new Tab(
//                   text: text,
//                 );
//               }).toList()
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



Future main() async => runApp(new MyApp());