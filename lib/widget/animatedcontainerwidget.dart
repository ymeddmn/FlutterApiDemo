import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class AnimatedContainterWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatedContainerState();
  }
}

class AnimatedContainerState extends CommonState<AnimatedContainterWidget> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.green;
  double _radius = 0;

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('容器宽高扩大三倍，颜色由绿色渐变为红色'),
            Text('curve：动画过程的执行方式，本例是一个线性动画'),
            Text('直接改变某个属性就可以开始执行动画'),
            AnimatedContainer(
              curve: Curves.linear,
              duration: Duration(seconds: 4),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_radius),
                color: _color,
              ),
            ),
            RaisedButton(
              child: Text('开始动画'),
              onPressed: () {
                setState(() {
                  _width = 300;
                  _height = 300;
                  _color = Colors.red;
                  _radius = 50;
                });
              },
            )
          ],
        )
      ],
    );
  }
}
