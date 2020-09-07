import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class CustomPainWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomPaintState();
  }
}

class CustomPaintState extends CommonState<CustomPainWidget> {
  @override
  Widget getBody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: CustomPaint(
        painter: MyPainter(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  double round = 100;

  @override
  void paint(Canvas canvas, Size size) {
    var degree = math.pi * 2 / 5;
    var degree0 = degree * 0; //依此是五角星的五个角的角度
    var degree1 = degree * 1;
    var degree2 = degree * 2;
    var degree3 = degree * 3;
    var degree4 = degree * 4;
    Path path = Path();
    path.moveTo(0, 0);
    //连接五角星的五个角，0、2、4、1、3、0；，最后path.close关闭路径
    path.lineTo(round * math.cos(degree0), round * math.sin(degree0));
    path.lineTo(round * math.cos(degree2), round * math.sin(degree2));
    path.lineTo(round * math.cos(degree4), round * math.sin(degree4));
    path.lineTo(round * math.cos(degree1), round * math.sin(degree1));
    path.lineTo(round * math.cos(degree3), round * math.sin(degree3));
    path.lineTo(round * math.cos(degree0), round * math.sin(degree0));
    path.close();
    canvas.translate(size.width / 2, size.height / 2);
    canvas.rotate(-(math.pi - 2 * degree) / 2); //必须先旋转画布，再进行下面的绘制操作，否则不会有旋转效果

    canvas.save();
    canvas.drawPath(path, Paint()..color = Colors.red);
    canvas.drawCircle(Offset(0, 0), 10, Paint()..color.red);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    throw true;
  }
}
