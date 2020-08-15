import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class DecoratedBoxTransitionWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return DecoratedBoxTransitionState();
  }
}

class DecoratedBoxTransitionState
    extends CommonState<DecoratedBoxTransitionWidget>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  Animation<Decoration> animate;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animate = DecorationTween(
            begin: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            end: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(150)))
        .animate(controller);
  }

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('通过改变decorate实现动画'),
            DecoratedBoxTransition(
              decoration: animate,
              child: Container(
                width: 300,
                height: 300,
              ),
            ),
            RaisedButton(
              child: Text('开始或者反转动画'),
              onPressed: () {
                if (controller.isCompleted) {
                  controller.reverse();
                } else {
                  controller.forward();
                }
              },
            )
          ],
        )
      ],
    );
  }
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
