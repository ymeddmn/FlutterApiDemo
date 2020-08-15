import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class StackWidget extends CommonWidget{
  @override
  State<StatefulWidget> createState() {
    return StackState();
  }
}

class StackState extends CommonState<StackWidget>{
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('alignment:可以设置Stack内部view的位置，本例设置的是居中，默认再左上角'),
            Text('一个布局中只能有一个Stack'),
            Text('Stack中控件使用Positioned定位位置'),
            Stack(
              children: <Widget>[
                WidgetUtils.getDivider(),
                Container(width: 200,height: 200,color: Colors.green,),
                Container(width: 150,height: 150,color: Colors.yellow,),
                Container(width: 100,height: 100,color: Colors.blue,),
                Positioned(
                  left: 30,
                  top: 30,
                  child: Container(child: Text('距离左边30，上边30'),color: Colors.pink,),
                ),
                Positioned(
                  top: 90,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.red,
                    child: Text('左边距离左为0，右边距离右边为0，宽度就是横向全屏'),
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}