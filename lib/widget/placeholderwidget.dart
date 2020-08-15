import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class PlaceHolderWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return PlaceHolderState();
  }
}

class PlaceHolderState extends CommonState<PlaceHolderWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('Placeholder用来作为站位控件'),

            Container(
              child: Placeholder(
                color: Colors.green,
                strokeWidth: 10,
                fallbackHeight: 200,
                fallbackWidth: 100,
              ),
            ),
          ],
        )
      ],
    );
  }
}
