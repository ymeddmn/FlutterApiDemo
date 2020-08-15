import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class ClipboardWidget extends CommonWidget{
  @override
  State<StatefulWidget> createState() {
    return ClipboardState();
  }
}


class ClipboardState extends CommonState<ClipboardWidget>{
  @override
  Widget getBody() {
    return Column(
      children: <Widget>[
        WidgetUtils.getDivider(),
        Text('flutter剪贴板的使用方法'),
        TextField(decoration: InputDecoration(fillColor: Colors.green,filled: true,hintText:"复制剪贴板数据后，可以在这里长按粘贴" ),),
        RaisedButton(child: Text('点击复制哈哈到剪贴板'),onPressed: (){
          Clipboard.setData(ClipboardData(text: "哈哈"));
        },)
      ],
    );
  }
}