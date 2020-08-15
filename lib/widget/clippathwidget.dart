import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'dart:math' as Math;

import 'package:flutterdemo/utils/WidgetUtils.dart';

class ClipPathWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return ClipPathState();
  }
}

class ClipPathState extends CommonState<ClipPathWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('可以绘制路径，本例中绘制了一个五角星'),
            ClipPath(
              clipper: _StarCliper(radius: 50),
              child: Image.asset(
                'img/head.jpeg',
                width: 100,
                height: 100,
              ),
            )
          ],
        )
      ],
    );
  }
}

class _StarCliper extends CustomClipper<Path> {
  final double radius;

  _StarCliper({this.radius});

  /// 角度转弧度公式
  double degree2Radian(int degree) {
    return (Math.pi * degree / 180);
  }

  @override
  Path getClip(Size size) {
    double radius = this.radius;
    Path path = new Path();
    double radian = degree2Radian(36); // 36为五角星的角度
    double radius_in =
        (radius * Math.sin(radian / 2) / Math.cos(radian)); // 中间五边形的半径

    path.moveTo((radius * Math.cos(radian / 2)), 0.0); // 此点为多边形的起点
    path.lineTo((radius * Math.cos(radian / 2) + radius_in * Math.sin(radian)),
        (radius - radius * Math.sin(radian / 2)));
    path.lineTo((radius * Math.cos(radian / 2) * 2),
        (radius - radius * Math.sin(radian / 2)));
    path.lineTo(
        (radius * Math.cos(radian / 2) + radius_in * Math.cos(radian / 2)),
        (radius + radius_in * Math.sin(radian / 2)));
    path.lineTo((radius * Math.cos(radian / 2) + radius * Math.sin(radian)),
        (radius + radius * Math.cos(radian)));
    path.lineTo((radius * Math.cos(radian / 2)), (radius + radius_in));
    path.lineTo((radius * Math.cos(radian / 2) - radius * Math.sin(radian)),
        (radius + radius * Math.cos(radian)));
    path.lineTo(
        (radius * Math.cos(radian / 2) - radius_in * Math.cos(radian / 2)),
        (radius + radius_in * Math.sin(radian / 2)));
    path.lineTo(0.0, (radius - radius * Math.sin(radian / 2)));
    path.lineTo((radius * Math.cos(radian / 2) - radius_in * Math.sin(radian)),
        (radius - radius * Math.sin(radian / 2)));

    path.close(); // 使这些点构成封闭的多边形

    return path;
  }

  @override
  bool shouldReclip(_StarCliper oldClipper) {
    return this.radius != oldClipper.radius;
  }
}
