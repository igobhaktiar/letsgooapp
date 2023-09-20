import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetExpanded extends StatelessWidget{
  const WidgetExpanded({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return Column(
      children: <Widget>[
        Expanded(child: Container(
            color: Colors.red,) ,
        ),
        Expanded(child: Container(
          color: Colors.orange,)
        ),
        Expanded(child: Container(
          color: Colors.yellow,)
        ),
        Expanded(child: Container(
          color: Colors.green,)
        ),
        Expanded(child: Container(
          color: Colors.blue,)
        ),
        Expanded(child: Container(
          color: Colors.indigo,)
        ),
        Expanded(child: Container(
          color: Colors.purple,)
        )
      ],
    );
  }
}