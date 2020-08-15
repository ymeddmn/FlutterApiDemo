import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class AnimatedDefaultTextStyleWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatedDefaultTextStyleState();
  }
}


class AnimatedDefaultTextStyleState
    extends CommonState<AnimatedDefaultTextStyleWidget> {
  TextStyle _style;

  @override
  void initState() {
    super.initState();
    _style = TextStyle(color: Colors.green, fontSize: 20);
  }

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('实现对文字样式的动画'),
            AnimatedDefaultTextStyle(child: Text('文字样式动画'),
                style: _style,
                duration: Duration(seconds: 3)),
            RaisedButton(
              child: Text('点击开始动画'),
              onPressed: (){
                setState(() {
                  _style = TextStyle(color: Colors.red,fontSize: 50);
                });
              },
            )
          ],
        )
      ],
    );
  }
}