import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class OtherWidget extends CommonWidget{
  @override
  State<StatefulWidget> createState() {
    return OtherState();
  }
}

class OtherState extends CommonState<OtherWidget>{
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('以下是暂时没有做研究的控件'),
            Text('OverflowBox'),
            Text('SizedBox'),
            Text('SizedOverflowBox'),
            Text('OverflowBox'),
            Text('OverflowBox'),
            Text('CustomSingleChildLayout'),
            Text('Hero动画'),
            Text('FadeTransition透明度动画'),
            Text('Form：感觉很重要，但是暂时又用不到'),
            Text('PositionedTransition:位置动画'),
            Text('RotationTransition：旋转动画'),
            Text('ScaleTransition：缩放动画'),
            Text('SizeTransition：可以改变父控件大小的动画'),
            Text('SlideTransition：平移动画http://laomengit.com/flutter/widgets/SlideTransition.html#slidetransition'),
            Text('DragTarget'),
            Text('CustomPaint：自定义控件，这个必须研究，不过要后面学'),
            Text('NestedScrollView'),
            Text('Scrollable'),
            Text('ScrollBar'),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),




            Text('ListBody：这个控件和ListView一样的效果，所以基本用不到'),
          ],
        )
      ],
    );
  }
}