import 'dart:math';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  FocusNode nameFocusNode;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameFocusNode = FocusNode();
  }

  @override
  void dispose() {
    nameFocusNode.dispose();
    nameController.dispose();
    super.dispose();
  }
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
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
            ),
          ),
          TextField(
            controller: nameController,
            // 필드에 있는 텍스트를 실시간으로 받아오는 코드
            onChanged: (text){
              print(text);
            },
            focusNode: nameFocusNode,
            // TextFormField기능과 TextField 차이점 :
            // vaildata기능 여부-> TextFormField만 vaildate기능 가능
            autofocus: true, // 다른화면으로 넘어갔을때 커서(활성화)가 되어있는 기능
            decoration: InputDecoration(
              hintText: '이름을 입렵해 주세요',
              border: InputBorder.none, //아래 밑줄이 없어짐
              labelText : '이름'
            ),
          ), RaisedButton(
            onPressed: (){
              // 버튼을 누르면 TextField로 커서를 옮겨줌
              FocusScope.of(context).requestFocus(nameFocusNode);
            },
            child: Text('포커스'),
          ),
          RaisedButton(
            onPressed: (){
              // 버튼을 누르면 TextField로 커서를 옮겨줌
              // 콘솔에 타겟의 텍스트가 출력됨
              print("nameController.text: "+nameController.text);
              // alert기능으로 창 띄우기
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  content: Text(nameController.text),
                  actions: [
                    FlatButton(
                      child: Text("앙기모링"),
                      onPressed: (){
                        // 이후 처리할 코드를 여기에 작성
                        Navigator.pop(context);
                    },
                    )
                  ],
                );
              });
            }
            ,child: Text('TextField 값 확인 '),
          ),
    ],
      ),),
    );
  }
}


