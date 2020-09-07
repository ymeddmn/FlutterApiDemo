import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class VisibilityWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return VisibilityState();
  }
}

class VisibilityState extends CommonState<VisibilityWidget> {
  bool vis=true;
  @override
  Widget getBody() {
    return Column(
      children: [
        WidgetUtils.getDivider(),
        Text('visible:这个属性可以控制控件的显示和隐藏'),
        Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Visibility(visible:vis,child: Container(width: 50,height: 50,color: Colors.red,))
          ],
        ),
        RaisedButton(child: Text('点击按钮改变显示状态'),onPressed: (){
          setState(() {
            vis=!vis;
          });
        },)
      ],
    );
  }
}
