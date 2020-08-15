import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class ProgressWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return ProgressState();
  }
}

class ProgressState extends CommonState<ProgressWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('水平的进度条'),
            LinearProgressIndicator(
              value: 0.4,
              backgroundColor: Colors.green,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
            WidgetUtils.getDivider(),
            Text('圆形进度条'),
            CircularProgressIndicator(
              value: 0.5,
              backgroundColor: Colors.green,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
            WidgetUtils.getDivider(),
            Text('多个点组成的进度条'),
            CupertinoActivityIndicator(
              radius: 30,
              animating: true,
            ),
            WidgetUtils.getDivider(),
            Text('Refresh风格的进度条'),
            RefreshProgressIndicator(
              backgroundColor: Colors.greenAccent,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              strokeWidth: 2.0,

            )
          ],
        )
      ],
    );
  }
}
