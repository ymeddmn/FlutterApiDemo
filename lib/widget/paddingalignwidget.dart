import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class PaddingAlignWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return PaddingAlignState();
  }
}

class PaddingAlignState extends CommonState<PaddingAlignWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('Padding'),
            Container(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('设置子widget在控件中的位置'),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              )
              ,
            ),
          ],
        )
      ],
    );
  }
}