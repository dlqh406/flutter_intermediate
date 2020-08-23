import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _visible  = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            //위에 까지 전부 채워주는 소스
            padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child:  Text('Header'),
                  decoration: BoxDecoration(
                    color: Colors.amber
                  ),
                ),
                ListTile(
                  title: Text('Item1'),
                  onTap: (){
                    // title을 눌렀을 때 실행될 코드를 여기에 작성
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Item1'),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Item1'),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
              ],
      ),
      ),
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: Text("Drawer 예제"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _visible = ! _visible;
          });},
        child: Icon(Icons.play_arrow),

      ),
    );
  }
}

