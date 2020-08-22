import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.red;
  double _borderRadious = 8.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(color: _color, borderRadius: BorderRadius.circular(_borderRadious)),
            duration: Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn, //여러가지 커브들 있음 Curves. 치면 보
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            final random = Random();
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
            _borderRadious = random.nextInt(100).toDouble();
        });},
        child: Icon(Icons.play_arrow),

      ),
    );
  }
}


