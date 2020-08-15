import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class AnimatedBuilderWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatedBuilderState();
  }
}

class AnimatedBuilderState extends CommonState<AnimatedBuilderWidget>
    with TickerProviderStateMixin {
  Animation _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation = Tween(begin: 1.0, end: 3.0).animate(_controller);
  }

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('AnimatedBuilder：可以构建一个动画控件'),
            Text('本例实现一个缩放动画'),
            Text('使用AnimationController实现动画开始和结束控制'),
            Text('在builder中设置要改变的属性值，这样使用AnimatedBuilder开始动画的时候这个值就生效了'),
            AnimatedBuilder(
                animation: _animation,
                child: Image.asset(
                  'img/head.jpeg',
                  width: 100,
                  height: 100,
                ),
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animation.value,//这里实时设置控件的属性
                    child: child,
                  );
                }),
            RaisedButton(
              child: Text('点击开始动画'),
              onPressed: () {
                if (_animation.isCompleted) {
                  //如果动画已经完成就反转动画
                  _controller.reverse();
                } else {
                  //如果动画还没开始就开始动画
                  _controller.forward();
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
    _controller.dispose();
  }
}
