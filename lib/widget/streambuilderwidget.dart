import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class StreamBuilderWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return StreamBuilderState();
  }
}

class StreamBuilderState extends CommonState<StreamBuilderWidget> {
  StreamController controller;
  int index = 0;

  @override
  void initState() {
    super.initState();
    controller = StreamController();
  }

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('使用StreamBuilder实现控件构建'),
            StreamBuilder(
                stream: controller.stream,
                initialData: "初始默认数据",
                builder: (context, snapshot) {
                  var data = snapshot.data;
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      data,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  );
                }),
            RaisedButton(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text('点击设置文本，改变文本内容'),
              ),
              onPressed: () {
                controller.sink.add('哈哈哈，改变后的文本内容$index');
                index++;
              },
            )
          ],
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.close();
  }
}
