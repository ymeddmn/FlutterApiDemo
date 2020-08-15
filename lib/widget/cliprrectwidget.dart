import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class ClipRRectWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return ClipRRectState();
  }
}

class ClipRRectState extends CommonState<ClipRRectWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'img/head.jpeg',
                width: 100,
                height: 100,
              ),
            )
          ],
        )
      ],
    );
  }
}
