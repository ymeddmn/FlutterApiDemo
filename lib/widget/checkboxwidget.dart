import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class CheckBoxWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return CheckBoxState();
  }
}

class CheckBoxState extends CommonState<CheckBoxWidget> {
  bool selected = true;

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('onChanged:方法回调当前选中状态的反值'),
            Text('value:设置CheckBox的初始选中状态'),
            Text('activeColor:选框背景的颜色'),
            Text('checkColor:选框中勾的颜色'),
            Checkbox(
                activeColor: Colors.green,
                checkColor: Colors.red,
                value: selected,
                onChanged: (bool v) {
                  setState(() {
                    this.selected = v;
                  });
                }),
            Checkbox(
                value: selected,
                onChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                }),
            Checkbox(
                value: selected,
                onChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                }),
            WidgetUtils.getDivider(),
            Text('CheckboxListTile可以设置checkbox的标题'),
            Container(
              width: 130,
              child: CheckboxListTile(
                value: selected,
                subtitle: Text('哈哈'),
                isThreeLine: true,
                onChanged: (v) {
                  setState(() {
                    selected = v;
                  });
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
