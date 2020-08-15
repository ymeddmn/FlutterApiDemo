import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class DatePickerWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return DatePickerState();
  }
}

class DatePickerState extends CommonState<DatePickerWidget> {
  var timePicker;
  var datePicker;
  var text="";

  Future showDatePickerDialog() async {
    datePicker = await showDatePicker(
//        locale: Localizations.localeOf(context),
//        locale: Locale('zh'),
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990, 12, 30),
        lastDate: DateTime(2021, 12, 3, 5));
  }

  Future showTimePickerDialog() async {
    timePicker = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(DateTime(1990, 10, 30, 09, 45)));

  }

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            RaisedButton(
              child: Text('点击弹出日期控件'),
              color: Colors.green,
              onPressed: () {
                showDatePickerDialog();
              },
            ),
            WidgetUtils.getDivider(),
            RaisedButton(
              child: Text('时间控件'),
              color: Colors.green,
              onPressed: () {
                showTimePickerDialog();
              },
            ),
            WidgetUtils.getDivider(),
//            Text(text),
            RaisedButton(
              color: Colors.green,
              child: Text('获取时间'),
              onPressed: () {
                setState(() {
                  text = datePicker.toString() + ":" + timePicker.toString();
                  print(text);
                });
              },
            )
          ],
        )
      ],
    );
  }
}
