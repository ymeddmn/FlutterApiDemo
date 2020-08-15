import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class SwitchWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return SwitchState();
  }
}

class SwitchState extends CommonState<SwitchWidget> {
  bool checked = false;

  @override
  Widget getBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        WidgetUtils.getDivider(),
        Text('activeColor:设置图标的颜色'),
        Text('value:默认的显示值'),
        Switch(
            value: checked,
            activeColor: Colors.green,
            onChanged: (value) {
              setState(() {
                this.checked = value;
              });
            })
      ],
    );
  }
}
