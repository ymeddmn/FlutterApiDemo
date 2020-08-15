import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class IconWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return IconState();
  }
}

class IconState extends CommonState<IconWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('icon控件展示图标'),
            Text('color属性可以设置图标的颜色'),
            Icon(
              Icons.ac_unit,
              color: Colors.green,
            ),
            WidgetUtils.getDivider(),
            Text('size：Icon的size属性传一个double类型数据，设置图标的长和宽'),
            Icon(Icons.accessibility,size: 100,color: Colors.pink,)
          ],
        )
      ],
    );
  }
}
