import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class ClipOvalWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return ClipOvalState();
  }
}

class ClipOvalState extends CommonState<ClipOvalWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('ClipOval用来设置圆形控件，它包裹的控件自动会变成圆形'),
            Text('clipBehavior:这个属性设置以后看不到效果'),
            Text('clipBehavior: Clip.hardEdge:剪裁但是不使用抗锯齿'),
            Text('clipBehavior: Clip.antiAlias:剪裁而且使用抗锯齿'),
            Text('clipBehavior: Clip.antiAliasWithSaveLayer:带有抗锯齿的'),
            Container(
              width: 200,
              alignment: Alignment.center,
              height: 200,
              color: Colors.green,
              child: ClipOval(
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  'img/head.jpeg',
                  width: 100,
                  height: 100,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
