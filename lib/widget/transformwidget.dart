import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class TransformWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return TransformState();
  }
}

class TransformState extends CommonState<TransformWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('控件的转换基准点是左上角'),
            Transform(
              transform: Matrix4.rotationZ(2),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Transform(
              origin: Offset(50, 50),
              transform: Matrix4.rotationX(0.25),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            )
          ],
        )
      ],
    );
  }
}
