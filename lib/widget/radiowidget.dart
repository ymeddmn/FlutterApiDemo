import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class RadioWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return RadioState();
  }
}

class RadioState extends CommonState<RadioWidget> {
  var radioValue = 1;

  @override
  Widget getBody() {
    return Column(
      children: <Widget>[
        WidgetUtils.getDivider(),
        Text('activeColor:设置单选按钮的颜色'),
        Text('groupValue:单选按钮组的值'),
        Text('value:单选按钮的值，单选按钮的值等于组的值的时候这个单选按钮会被选中'),
        Radio(
            activeColor: Colors.green,
            value: 1,
            groupValue: radioValue,
            onChanged: (value) {
              setState(() {
                radioValue = 1;
              });
            }),
        Radio(
            value: 2,
            groupValue: radioValue,
            onChanged: (value) {
              setState(() {
                radioValue = 2;
              });
            }),
        Radio(
            value: 3,
            groupValue: radioValue,
            onChanged: (value) {
              setState(() {
                radioValue = 3;
              });
            })
      ],
    );
  }
}
