import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class RichTextWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return RichTextState();
  }
}

class RichTextState extends CommonState<RichTextWidget> {
  @override
  Widget getBody() {
    return Column(
      children: <Widget>[
        WidgetUtils.getDivider(),
        Text('RichText可以实现同一行文字多种样式文本的功能'),
        Text('RichText内部TextSpan默认的颜色是白色，所以在白色背景下一定要设置颜色才能看到'),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: '沉默啊，',
                style: TextStyle(color: Colors.green, fontSize: 30)),
            TextSpan(
                text: '沉默啊，',
                style: TextStyle(color: Colors.red, fontSize: 10)),
            TextSpan(
                text: '不在沉默着爆发，',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: '就在沉默着灭亡，',
                style: TextStyle(color: Colors.blueGrey, fontSize: 20)),
          ]),
        )
      ],
    );
  }
}
