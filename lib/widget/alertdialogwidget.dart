import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class AlertDialogWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return AlertDialogState();
  }
}

class AlertDialogState extends CommonState<AlertDialogWidget> {
  @override
  Widget getBody() {
    return Column(
      children: <Widget>[
        WidgetUtils.getDivider(),
        Text('content:设置AlertDialog的内容'),
        Text('contentTextStyle:设置AlertDialog的内容的文字样式'),
        Text('titleTextStyle:设置AlertDialog标题的样式'),
        Text('shape: 可以设置弹出框圆角RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))'),

        RaisedButton(
          child: Text('点击弹出AlertDialog'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.pink,
                    contentTextStyle: TextStyle(color: Colors.white),
                    title: Text('标题'),
                    content: Text('content'),
                    titleTextStyle: TextStyle(color: Colors.white),
                    actions: <Widget>[
                      Text('确认'),
                      Text('取消'),
                    ],
                  );
                });
          },
        )
      ],
    );
  }
}
