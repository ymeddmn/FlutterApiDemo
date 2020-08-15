import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

double childSize = 40;

class ExpandMenuWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return ExpandMenuState();
  }
}

class ExpandMenuState extends CommonState<ExpandMenuWidget> {
  @override
  Widget getBody() {
    return Center(
      child: BurstFlow(
          children: getChilds(),
          menu: Image.asset(
            'img/head.jpeg',
            width: 50,
            height: 50,
          )),
    );
  }

  List<Widget> getChilds() {
    return List.generate(8, (index) {
      return ClipOval(
        child: Image.asset(
          'img/head.jpeg',
          width: childSize,
          height: childSize,
        ),
      );
    });
  }
}

class BurstFlow extends StatefulWidget {
  final List<Widget> children;
  final Widget menu;

  BurstFlow({@required this.children, @required this.menu});

  @override
  _BurstFlowState createState() => _BurstFlowState();
}

class _BurstFlowState extends State<BurstFlow>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double _rad = 0.0;
  bool _closed = true;

  @override
  void initState() {
    _controller = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this)
      ..addListener(() => setState(
          () => _rad = (_closed ? (_controller.value) : 1 - _controller.value)))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _closed = !_closed;
        }
      });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: _CircleFlowDelegate(_rad),
      children: [
        ...widget.children,
        InkWell(
            onTap: () {
              _controller.reset();
              _controller.forward();
            },
            child: widget.menu)
      ],
    );
  }
}

class _CircleFlowDelegate extends FlowDelegate {
  final double rad;

  _CircleFlowDelegate(this.rad);

  @override //绘制孩子的方法
  void paintChildren(FlowPaintingContext context) {
    double radius = context.size.shortestSide / 2;//获取容器一半的宽度，也就是展开时候的半径
    var count = context.childCount - 1;
    var perRad = 2 * pi / count;//两个展开控件之间的角度
    for (int i = 0; i < count; i++) {
      print(i);
      var cSizeX = context.getChildSize(i).width / 2;//子控件的宽度
      var cSizeY = context.getChildSize(i).height / 2;//子控件的高度
      var offsetX = rad * (radius - cSizeX) * cos(i * perRad) + radius;//rad是动画的百分比，offsetX是控件的x方向的偏移量
      var offsetY = rad * (radius - cSizeY) * sin(i * perRad) + radius;//rad是动画的百分比，offsetY是控件的Y方向的偏移量
//      print('$offsetX+$offsetY+$rad');
      context.paintChild(i,
          transform: Matrix4.translationValues(
              offsetX - cSizeX,//子控件x方向的偏移
              offsetY - cSizeY, //子控件y方向的偏移
              0.0));//
    }
    context.paintChild(context.childCount - 1,
        transform: Matrix4.translationValues(
            radius - context.getChildSize(context.childCount - 1).width / 2,
            radius - context.getChildSize(context.childCount - 1).height / 2,
            0.0));
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return true;
  }
}
