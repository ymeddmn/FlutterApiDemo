import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class ChipWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return ChipState();
  }
}

class ChipState extends CommonState<ChipWidget> {
  @override
  Widget getBody() {
    return Column(
      children: <Widget>[
        WidgetUtils.getDivider(),
        Text('Chip用来做标签很合适'),
        Text('label:这是主题内容'),
        Text('avatar:设置标题主题左边内容'),
        Text('deleteIcon:右边的删除图标'),
        Text('onDeleted:右边的删除图标点击回调'),
        Chip(
          label: Text('哈哈哈'),
          avatar: Icon(Icons.accessibility),
          deleteIcon: Icon(Icons.delete),
          onDeleted: () {},
        ),
        WidgetUtils.getDivider(),
        Text('backgroundColor：背景颜色'),
        Chip(
          label: Text('标签'),
          backgroundColor: Colors.pink,
        )
      ],
    );
  }
}
