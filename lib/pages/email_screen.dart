import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Card 卡片式布局
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: new Text(
              '吉林省吉林市昌邑区',
              style: TextStyle(fontWeight: FontWeight.w500)
            ),
            subtitle: new Text('技术胖:1513938888'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            )
          ),
          new Divider(),
          ListTile(
            title:new Text('北京市海淀区中国科技大学',style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: new Text('胜宏宇:1513938888'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
          ),
        ],
      ),
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('Email'),
      ),

      body: Center(
        child: card,
      ),

      // Image 组件
      // body: Center(
      //   child: Container(
      //     child: new Image.network(
      //       'https://jspang.com/images/next_blog.jpg',
      //       // scale: 1.0,
      //       // fit: BoxFit.cover,
      //       // color: Colors.greenAccent,
      //       // colorBlendMode: BlendMode.darken,
      //       repeat: ImageRepeat.repeat,
      //     ),
      //     width: 300.0,
      //     height: 200.0,
      //     // color: Colors.lightBlue,
      //   ),
      // ),
    );
  }
}