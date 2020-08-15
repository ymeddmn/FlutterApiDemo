import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class PopMenuButtonWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return PopMenuButtonState();
  }
}

class PopMenuButtonState extends CommonState<PopMenuButtonWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('onSelected:回调的结果就是PopupMenuItem设置的value值'),
            Text('PopupMenuItem属性可以通过enable设置是否可用'),
            PopupMenuButton(
              itemBuilder: (context) {
                return <PopupMenuItem<String>>[
                  PopupMenuItem(
                    enabled: false,
                    value: '哈哈哈11',
                    child: Text('哈哈哈不可用'),
                  ),
                  PopupMenuItem(
                    value: '哈哈哈11',
                    child: Text('哈哈哈'),
                  ),
                  PopupMenuItem(
                    value: '哈哈哈11',
                    child: Text('哈哈哈'),
                  ),
                  PopupMenuItem(
                    value: '哈哈哈11',
                    child: Text('哈哈哈'),
                  ),
                  PopupMenuItem(
                    value: '哈哈哈11',
                    child: Text('哈哈哈'),
                  ),
                ];
              },
              initialValue: "哈哈列表",
              onSelected: (value) {
                print('结果$value');
              },
            )
          ],
        )
      ],
    );
  }

  getWidgets() {
    List<Widget> widgets = [];
    widgets.add(Text('哈哈'));
    widgets.add(Text('哈哈'));
    widgets.add(Text('哈哈'));
    widgets.add(Text('哈哈'));
    return widgets;
  }
}
