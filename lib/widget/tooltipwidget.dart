import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class ToolTipWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return ToolTipState();
  }
}

class ToolTipState extends CommonState<ToolTipWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('Tooltip:这个控件使用后，长按控件会在控件底部展示提示'),
            Text('preferBelow:可以设置tip是在底部还是在顶部弹出来'),
            Text('height:可以设置弹出消息的大小'),
            Tooltip(
              message: 'tip',
              preferBelow: false,
              height: 100,
              child: IconButton(
                icon: Icon(Icons.done),
              ),
            )
          ],
        )
      ],
    );
  }
}
