import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class ClipRectWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return ClipRectState();
  }
}

class ClipRectState extends CommonState<ClipRectWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('矩形剪裁通过属性：clipper：可以把图片减去一部分像素'),
            Text('下面的例子通过自定义CustomClipper把图片的上下个剪去了20像素，左右各剪去了10像素'),
            ClipRect(
              clipper: MyClipper(),
              child: Image.asset(
                'img/head.jpeg',
                width: 100,
                height: 100,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(10, 20, size.width - 10, size.height - 20);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
