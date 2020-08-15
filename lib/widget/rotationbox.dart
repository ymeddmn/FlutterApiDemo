import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class RotatedBoxWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return RotatedBoxState();
  }
}

class RotatedBoxState extends CommonState<RotatedBoxWidget> {
  @override
  Widget getBody() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        WidgetUtils.getDivider(),
        Text('RotatedBox可以使控件实现九十度倍数的旋转'),
        Text('quarterTurns：这个参数的整数倍数进行顺时针旋转'),
        Text('下面四张图的quarterTurns值分别是:1、2、3、4'),
        RotatedBox(
          quarterTurns: 1,
          child: Image.asset(
            'img/head.jpeg',
            width: 100,
            height: 100,
          ),
        ),
        RotatedBox(
          quarterTurns: 2,
          child: Image.asset(
            'img/head.jpeg',
            width: 100,
            height: 100,
          ),
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Image.asset(
            'img/head.jpeg',
            width: 100,
            height: 100,
          ),
        ),
        RotatedBox(
          quarterTurns: 4,
          child: Image.asset(
            'img/head.jpeg',
            width: 100,
            height: 100,
          ),
        )
      ],
    );
  }
}
