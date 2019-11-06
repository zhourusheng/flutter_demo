// Material APP。Material是一种标准的移动端和web端的视觉设计语言。 Flutter提供了一套丰富的Material widgets
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'bottom_navigation_widget.dart';


// main函数使用了(=>)符号, 这是Dart中单行函数或方法的简写
void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      // home: new RandomWords(),
      home: BottomNavigationWidget(),
    );
  }
}

// 添加一个 有状态的部件 (StatefulWidget)
class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}


class RandomWordsState extends State<RandomWords> {
  // 在Dart语言中使用下划线前缀标识符，会强制其变成私有的。
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();

  final _biggerFont = const TextStyle(fontSize: 16.0);

  void _pushSaved() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          final tiles = _saved.map(
            (pair) {
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont
                ),
              );
            }
          );
          final divided = ListTile
            .divideTiles(
              context: context,
              tiles: tiles
            )
            .toList();

          // builder返回一个Scaffold，其中包含名为“Saved Suggestions”的新路由的应用栏
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Saved Suggestions'),
            ),
            body: new ListView(
              children: divided,
            ),
          );
        }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.list
            ),
            onPressed: _pushSaved,
          )
        ],
      ),
      body: _buildSuggestion(),
    );
  }

  // _buildSuggestions() 函数. 此方法构建显示建议单词对的ListView。
  Widget _buildSuggestion() {
    return new ListView.builder(
      padding: EdgeInsets.all(16.0),
      // 对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
      // 在偶数行，该函数会为单词对添加一个ListTile row.
      // 在奇数行，该函数会添加一个分割线widget，来分隔相邻的词对。
      // 注意，在小屏幕上，分割线看起来可能比较吃力。
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();

        // // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整），比如i为：1, 2, 3, 4, 5
        // 时，结果为0, 1, 1, 2, 2， 这可以计算出ListView中减去分隔线后的实际单词对数量
        final index = i ~/ 2;
        // 如果是建议列表中最后一个单词时
        if (index >= _suggestions.length) {
          // ...接着再生成10个单词对，然后添加到建议列表
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  // 对于每一个单词对，_buildSuggestions函数都会调用一次_buildRow
  Widget _buildRow(WordPair pair) {
    // 检查单词是否被保存
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
         if (alreadySaved) {
           _saved.remove(pair);
         } else {
           _saved.add(pair);
         } 
        });
      },
    );
  }
}