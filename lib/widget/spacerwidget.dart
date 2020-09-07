import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

/**
 * spacer用法
 */
class SpacerWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return SpacerState();
  }
}

class SpacerState extends CommonState<SpacerWidget> {
  @override
  Widget getBody() {
    return Column(
      children: [
        Text('两个Container如果中间没有Spacer的时候是如下这样的'),
        Row(
          children: [
            Container(
              width: 100,
              height: 50,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 50,
              color: Colors.green,
            )
          ],
        ),
        WidgetUtils.getDivider(),
        Text('两个Container如果中间有Spacer的时候是如下这样的'),
        Text('也就是说Spacer把中间的位置都占满了，这样绿色的控件就跑到了横向的最右边'),
        Row(
          children: [
            Container(
              width: 100,
              height: 50,
              color: Colors.red,
            ),
            Spacer(),
            Container(
              width: 100,
              height: 50,
              color: Colors.green,
            )
          ],
        ),
        WidgetUtils.getDivider(),
        Text('Spacer同时可以对column使用'),
        WidgetUtils.getDivider(),
        Text('Spacer的flex属性可以设置值用来觉得spacer占用剩余空间的比例'),
        Text('下面的例子，红色绿色Container的两边和中间分别有一个flex=1的Spacer，效果如下'),
        Row(
          children: [
            Spacer(flex: 1,),
            Container(
              width: 100,
              height: 50,
              color: Colors.red,
            ),
            Spacer(flex: 1,),
            Container(
              width: 100,
              height: 50,
              color: Colors.green,
            ),
            Spacer(flex: 1,)
          ],
        ),
      ],
    );
  }
}
