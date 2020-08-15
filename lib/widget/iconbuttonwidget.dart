import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class IconButtonWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return IconButtonState();
  }
}

class IconButtonState extends CommonState<IconButtonWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('icon:通过这个属性可以设置按钮的图标'),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.ac_unit,
                color: Colors.green,
              ),
            ),
            WidgetUtils.getDivider(),
            Text('alignment:文字的位置'),
            Text('iconSize:图标的尺寸'),
            IconButton(
                icon: Icon(
                  Icons.monetization_on,
                  color: Colors.red,
                ),
                alignment: Alignment.center,
                iconSize: 90,
                onPressed: () {}),
            WidgetUtils.getDivider(),
            Text('splashColor：水波纹颜色'),
            IconButton(
              splashColor: Colors.green,
                icon: Icon(
                  Icons.monetization_on,
                  color: Colors.red,
                ),
                alignment: Alignment.center,
                iconSize: 90,
                onPressed: () {})
          ],
        )
      ],
    );
  }
}
