import 'dart:math';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final items = List<String>.generate(20, (index) => "Item${index+1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('AnimatedContainer')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          final item = items[index];
              return Dismissible(
                background: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.only(left: 340.0),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                ),
                direction: DismissDirection.endToStart,
                onDismissed: (direction){
                  setState(() {
                    //direction: DismissDirection.startToEnd 로 할 수도 있고
                    //아래처럼 if문 넣어서 할 수 있음
//                    if(direction == DismissDirection.startToEnd){
//                      items.removeAt(index);}
                    items.removeAt(index);

                  });
                },
                child: ListTile(
                  title:  Text('${items[index]}')
                ),
                key: Key(item),

              );
        }
      ),
    );
  }
}


