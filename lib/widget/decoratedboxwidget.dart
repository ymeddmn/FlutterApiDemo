import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class DecorateBoxWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return DecoratedBoxState();
  }
}

class DecoratedBoxState extends CommonState<DecorateBoxWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  shape: BoxShape.rectangle,
                  color: Colors.green),
              child: Text('哈哈航啊'),
            )
          ],
        )
      ],
    );
  }
}
