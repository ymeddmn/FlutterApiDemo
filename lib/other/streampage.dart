import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/BroadCastUtils.dart';

class StreamPage extends CommonWidget{
  @override
  State<StatefulWidget> createState() {
    return StreamState();
  }
}


class StreamState extends CommonState<StreamPage>{
  @override
  Widget getBody() {
    return Column(
      children: <Widget>[
        Text(""),
        RaisedButton(
          child: Text('点击我改变上一个页面文字展示'),
          onPressed: (){
            BroadCast.update('来自StreamPage页面的传值');
          },
        )
      ],
    );
  }
}