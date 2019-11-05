import 'package:flutter/material.dart';

class AirplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AirPlay'),
      ),
      // Row 水平布局、Expanded灵活水平布局
      // body: new Row(
      //   children: <Widget>[
      //     Expanded(child: new RaisedButton(
      //       onPressed: () {
      //       },
      //       color: Colors.redAccent,
      //       child: new Text('红色按钮'),
      //     )),
      //     Expanded(child: new RaisedButton(
      //       onPressed: () {
      //       },
      //       color: Colors.orangeAccent,
      //       child: new Text('黄色按钮'),
      //     )),
      //     Expanded(child: new RaisedButton(
      //       onPressed: () {
      //       },
      //       color: Colors.pinkAccent,
      //       child: new Text('粉色按钮'),
      //     ))
      //   ],
      // )


      // Column 垂直方向布局
      body: Column(
        // 主轴上对齐方式, 类似于 Flex布局
        mainAxisAlignment: MainAxisAlignment.center,
        // 交叉轴上对齐方式
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('黑黑黑黑'),
          Text('哈哈哈哈这一行超级长唱唱唱'),
          Text('2333333'),
        ],
      ),
    );
  }
}