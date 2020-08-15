import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class OffstageWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return OffsetState();
  }
}

class OffsetState extends CommonState<OffstageWidget> {
  bool show = true;

  @override
  Widget getBody() {
    return Column(
      children: <Widget>[
        WidgetUtils.getDivider(),
        Text('offstage:Offstage的这个属性可以设置控件的显示和隐藏'),
        Container(
          width: 200,
          height: 200,
          child: Offstage(
            offstage: show,
            child: Image.asset('img/head.jpeg'),
          ),
        ),
        RaisedButton(
          child: Text('点击显示或者隐藏头像'),
          onPressed: () {
            setState(() {
              show = !show;
            });
          },
        )
      ],
    );
  }
}
