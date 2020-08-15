import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class SimpleDialogWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return SimpleDialogState();
  }
}

class SimpleDialogState extends CommonState<SimpleDialogWidget> {
  @override
  Widget getBody() {
    return Column(
      children: <Widget>[
        WidgetUtils.getDivider(),
        Text('SimpleDialog:展示dialog功能'),

        RaisedButton(
          child: Text('点击弹出SimpleDialog'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (buildContext) {
                  return SimpleDialog(
                    title: Text('标题'),
                    children: <Widget>[
                      SimpleDialogOption(
                        child: Text('确认'),
                      ),
                      SimpleDialogOption(
                        child: Text('取消'),
                      ),
                    ],
                  );
                });
          },
        )
      ],
    );
  }
}
