import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/screen.dart';

class ExpandFlowMenuWidget1 extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return ExpandFlowMenuState1();
  }
}

class ExpandFlowMenuState1 extends CommonState<ExpandFlowMenuWidget1> {
  @override
  Widget getBody() {
    return Center(
      child: Flow(
        delegate: TestDelegate(),
        children: getWidgets(),
      ),
    );
  }

  getWidgets() {
    int length = 24;
    return List.generate(length, (index) {
      if (index == length - 1) {
        return Container(
          height: 3,
          width: double.infinity,
          color: Colors.green,
        );
      } else {
        return Container(
          width: 30,
          height: 30,
          color: Colors.green,
          child: Image.asset('img/head.jpeg'),
        );
      }
    });
  }
}

class TestDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    var width = Screen.width;
    var step = width / (context.childCount-1);
    var stepRadius = 2 * pi / (context.childCount-1);
    for (int i = 0; i < context.childCount-1; i++) {
      context.paintChild(i,
          transform: Matrix4.translationValues(
              i * step, 100 * sin(i * stepRadius) + 150, 0));
    }
    context.paintChild(context.childCount-1,transform: Matrix4.translationValues(0, 150, 0));
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return true;
  }
}
