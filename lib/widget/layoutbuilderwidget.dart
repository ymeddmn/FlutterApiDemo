import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class LayoutBuilderWidget extends CommonWidget{
  @override
  State<StatefulWidget> createState() {
    return LayoutBuilderState();
  }
}

class LayoutBuilderState extends CommonState<LayoutBuilderWidget>{
  @override
  Widget getBody() {
    return Column(
      children: <Widget>[
        WidgetUtils.getDivider(),
        Text('使用LayoutBuilder可以在构建子widget的时候获取到父控件的尺寸,还有很多其他属性'),
        LayoutBuilder(builder: (context,constraints){
          var color = Colors.red;
          if(constraints.maxWidth>100){
            color = Colors.green;
          }
          return Container(
            width: 200,
            height: 200,
            color: color,
          );
        })
      ],
    );
  }
}