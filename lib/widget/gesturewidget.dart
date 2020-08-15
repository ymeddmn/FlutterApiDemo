import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class GestureWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return GestureState();
  }
}

class GestureState extends CommonState<GestureWidget> {
  Color color = Colors.red;

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 50,
              width: double.infinity,
              color: color,
            ),
            WidgetUtils.getDivider(),
            Text('默认情况下只有点击GestureDetector内部内容点击才会生效，比如本例只有单纯文字才会生效'),
            Text('onDoubleTap:两次点击变色'),
            GestureDetector(
              onTap: () {
                setState(() {
                  color = Colors.blue;
                });
              },
              onDoubleTap: () {
                setColor(Colors.pink);
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 50,
                color: color,
                child: Text(
                  '点击文字变黄',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Text(
                'behavior:HitTestBehavior.opaque  可以点击整个GestureDetector包裹区域点击事件都生效'),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                setState(() {
                  color = Colors.green;
                });
              },
              child: Container(
                height: 50,
                color: color,
                child: Text('点击变绿'),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('默认情况下只有点击GestureDetector内部内容点击才会生效，比如本例只有单纯文字才会生效'),
            GestureDetector(
              onTap: () {
                setState(() {
                  color = Colors.blue;
                });
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 50,
                color: color,
                child: Text(
                  '点击文字蓝',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('默认情况下只有点击GestureDetector内部内容点击才会生效，比如本例只有单纯文字才会生效'),
            GestureDetector(
              onTap: () {
                setState(() {
                  color = Colors.yellow;
                });
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 50,
                color: color,
                child: Text(
                  '点击文字变黄',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('onTapDown:按下的时候改变颜色'),
            GestureDetector(
              onTapDown: (detail) {
                setState(() {
                  color = Colors.pink;
                });
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 50,
                color: color,
                child: Text(
                  '按下的时候变换颜色',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('抬起的时候改变颜色'),
            GestureDetector(
              onTapUp: (detail) {
                setColor(Colors.red);
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 50,
                color: color,
                child: Text(
                  '抬起的时候改变颜色',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('点击取消改变颜色'),
            GestureDetector(
              onTapCancel: () {
                setColor(Colors.blue);
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 50,
                color: color,
                child: Text(
                  '点击取消改变颜色',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('没有效果'),
            Text('onSecondaryTapDown:暂时不知道用处'),
            Text('onSecondaryTapUp:暂时不知道用处'),
            Text('onSecondaryTapCancel:暂时不知道用处'),
            GestureDetector(
              onSecondaryTapDown: (detail) {
                setColor(Colors.blue);
              },
              onSecondaryTapCancel: () {
                setColor(Colors.green);
              },
              onSecondaryTapUp: (detail) {
                setColor(Colors.pink);
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 50,
                color: color,
                child: Text(
                  '这三个按钮暂时不知道用处',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('onLongPressMoveUpdate:长按后移动变色'),
            Text('onLongPressEnd:长按结束变色'),
            GestureDetector(
              onLongPressMoveUpdate: (detail) {
                setColor(Colors.pink);
              },
              onLongPressEnd: (detail) {
                setColor(Colors.yellow);
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 50,
                color: color,
                child: Text(
                  '长按效果1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('onLongPress:长按变色'),
            GestureDetector(
              onLongPress: () {
                setColor(Colors.blueGrey);
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 50,
                color: color,
                child: Text(
                  '长按效果2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('onLongPressUp:长按开始的时候变色'),
            GestureDetector(
              onLongPressStart: (detail) {
                setColor(Colors.green);
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 50,
                color: color,
                child: Text(
                  '长按效果3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('onLongPressUp:长按抬起的时候变色'),
            WidgetUtils.getDivider(),
            Text('类似的方法还有很多、如下：'),
            Text('onVerticalDragDown、onHorizontalDragDown'),
            WidgetUtils.getDivider(),
            Text('onPanDown:按下的时候回调变绿'),
            Text('onPanEnd:按下并拖动结束变粉'),
            Text('onPanCancel:按下拖动取消变黄'),
            Text('onPanStart:按下开始'),
            Text('onPanUpdate:按下拖动更新'),
            GestureDetector(
              onPanDown: (detail) {
                setColor(Colors.green);
              },
              onPanEnd: (d) {
                setColor(Colors.pink);
              },
              onPanCancel: () {
                setColor(Colors.yellow);
              },
              onPanStart: (d) {},
              onPanUpdate: (d) {},
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 50,
                color: color,
                child: Text(
                  '点击文字变黄',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('onScaleStart：两个手指放大或者缩小的时候回调-变红'),
            Text('onScaleStart：两个手指放大或者缩小结束的时候回调-变绿'),
            GestureDetector(
              onScaleStart: (d){
                setColor(Colors.red);
              },
              onScaleEnd: (d){
                setColor(Colors.green);
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 50,
                color: color,
                child: Text(
                  '点击文字变黄',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            WidgetUtils.getDivider(),
          ],
        )
      ],
    );
  }

  void setColor(MaterialColor thisColor) {
    setState(() {
      color = thisColor;
    });
  }
}
