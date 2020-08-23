import 'dart:math';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
            title: Text('TabController'),
        bottom : TabBar(tabs: [
          Tab(icon: Icon(Icons.access_alarm),text: 'Tab1',),
          Tab(icon: Icon(Icons.access_alarm),text: 'Tab2'),
          Tab(icon: Icon(Icons.access_alarm),text: 'Tab3')
        ],)),
        body: TabBarView(
          children: [
            Center(child: Icon(Icons.access_alarm),),
            Center(child: Text('Tab2'),),
            Center(child: Text('Tab3'),)
          ],
        ),
      ), length: 3,
    );
  }
}


