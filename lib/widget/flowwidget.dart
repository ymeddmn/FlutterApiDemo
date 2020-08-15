import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';
import 'package:flutterdemo/utils/screen.dart';

double boxSize = 50;

class FlowWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return FlowState();
  }
}

class FlowState extends CommonState<FlowWidget> {
  @override
  Widget getBody() {
    return Stack(
      children: <Widget>[
        Flow(
          delegate:CustomDelegate(),
          children: <Widget>[
            getChild(),
            getChild(),
            getChild(),
            getChild(),
            getChild(),
            getChild(),
            getChild(),
            getChild(),
            getChild(),
            getChild(),
            getChild(),
          ],
        ),
        Text('本例使用Flow实现GridView的效果')
      ],
    );
  }

  getChild() {
    return Container(
      color: Colors.green,
      width: boxSize,
      height: boxSize,
    );
  }
}

class CustomDelegate extends FlowDelegate {

  @override
  void paintChildren(FlowPaintingContext context) {
    var width = Screen.width;
    var itemWidth = width / 3;
    double yOffset = 20;
    double x = 0;
    for (int i = 0; i < context.childCount; i++) {
      x = (i % 3) * itemWidth + (itemWidth - boxSize) / 2;
      context.paintChild(
          i, transform: Matrix4.translationValues(x, yOffset, 0));
      if (i != 0 && i % 3 == 0) {
        yOffset += itemWidth;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return true;
  }
}