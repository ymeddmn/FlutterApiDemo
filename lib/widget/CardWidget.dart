import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class CardWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return CardState();
  }
}

class CardState extends CommonState<CardWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('elevation:设置阴影'),
            Card(
              child: Image.asset(
                'img/head.jpeg',
                width: 200,
                height: 200,
              ),
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            )
          ],
        )
      ],
    );
  }
}
