import 'dart:math';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('AnimatedContainer')),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value){
              if(value.isEmpty){
                return '공백을 채워주세요';
              }
            }
          ),
          Center(
            child: RaisedButton(
              onPressed: (){
                if(_formKey.currentState.validate()){
                  // 빈칸을 다 채웠을떄 여기에 코드 작성
                  Scaffold.of(_formKey.currentContext).showSnackBar(SnackBar(
                    content:  Text("처리완료"),
                  ));
                }
              },
              child: Text('제출'),
            ),
          )
        ],
      ),),
    );
  }
}


