import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class StatusBarFunc extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return StatusBarState();
  }
}

class StatusBarState extends CommonState<StatusBarFunc> {
  @override
  Widget getBody() {
//    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIOverlays([]);
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('本例实现底部状态栏的隐藏和底部导航栏的隐藏功能'),
            WidgetUtils.getDivider(),
            Text('隐藏状态栏的方法如下：'),
            Text('SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);'),
            Text('隐藏底部导航栏的方法如下：'),
            Text('SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);'),
            Text('同事隐藏状态栏和底部导航栏的方法'),
            Text('SystemChrome.setEnabledSystemUIOverlays([]);')
          ],
        )
      ],
    );
  }
}
