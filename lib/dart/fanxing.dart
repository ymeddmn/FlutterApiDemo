import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class FanxingWidget extends CommonWidget{
  @override
  State<StatefulWidget> createState() {
    return FanxingState();
  }
}


class FanxingState extends CommonState<FanxingWidget>{
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('Dart 支持泛型，如 List <int> （整数列表）或 List <dynamic> （任何类型的对象列表）。'),
            
          ],
        )
      ],
    );
  }

}