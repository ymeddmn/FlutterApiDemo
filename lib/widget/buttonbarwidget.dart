import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';


class ButtonBarWidget extends CommonWidget{
  @override
  State<StatefulWidget> createState() {
    return ButtonBarState();
  }
}

class ButtonBarState extends CommonState<ButtonBarWidget>{
  @override
  Widget getBody() {
    return Column(
      children: <Widget>[
        Text('ButtonBar用例设置按钮组'),
        ButtonBar(
          children: <Widget>[
            RaisedButton(child: Text('哈哈哈'),),
            IconButton(icon: Icon(Icons.add),),
            IconButton(icon: Icon(Icons.widgets),),
            IconButton(icon: Icon(Icons.arrow_back),),
          ],
        )
      ],
    );
  }
}
