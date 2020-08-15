import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class LongPressDragableWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return LongPressDragableState();
  }
}

class LongPressDragableState extends CommonState<LongPressDragableWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('长按后可以拖动控件'),
            Text('child:是展示的空间的'),
            Text('feedback:是长按后被拖动的控件'),
            LongPressDraggable(
              child: Image.asset(
                'img/head.jpeg',
                height: 150,
                width: 150,
              ),
              feedback: ClipOval(
                child: Image.asset(
                  'img/head.jpeg',
                  width: 150,
                  height: 150,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
