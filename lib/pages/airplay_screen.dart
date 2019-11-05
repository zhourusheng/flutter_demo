import 'package:flutter/material.dart';

class AirplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Stack
    var stack = new Stack(
      alignment: FractionalOffset(0.5, 0.8),
      children: <Widget>[
        // CircleAvatar
        new CircleAvatar(
          backgroundImage: new NetworkImage('http://hbimg.b0.upaiyun.com/0b385b069e6184747f51bcfcde8abe77d8e901ee12d2-vkE7SV_fw658'),
          radius: 100.0,
        ),
        new Positioned(
          top: 10.0,
          left: 10.0,
          child: new Container(
            decoration: new BoxDecoration(
              color: Colors.lightBlue,
            ),
            padding: EdgeInsets.all(5.0),
            child: new Text('可爱的头像嘿'),
          ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('AirPlay'),
      ),
      body: Center(
        child: stack,
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
      // body: Column(
      //   // 主轴上对齐方式, 类似于 Flex布局
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   // 交叉轴上对齐方式
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: <Widget>[
      //     Text('黑黑黑黑11'),
      //     Text('哈哈哈哈这一行超级长唱唱唱'),
      //     Text('2333333'),
      //   ],
      // ),


    );
  }
}