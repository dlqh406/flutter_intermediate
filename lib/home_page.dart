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
        title: Text('SnackBar')),
      body: Builder(
        builder: (context)=> Center(
          child: RaisedButton(onPressed: (){
            final snackBar0 = SnackBar(
              content: Text('메일이 삭제되었습니다'),
              action: SnackBarAction(label: '취소', onPressed:(){
              //눌렀을때 처리 코드
              }),
            );
            Scaffold.of(context).showSnackBar(snackBar0);
          }, child: Text('Show SnackBar'),),
        ),
      ),
    );
  }
}

