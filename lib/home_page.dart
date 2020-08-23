import 'dart:math';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('AnimatedContainer')),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(50, (position){return Center(
            child:  Text('Item $position'),
        );}
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
          });},
        child: Icon(Icons.play_arrow),

      ),

    );
  }
}


