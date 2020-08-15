import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class StreamControllerFunc extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return StreamControllerState();
  }
}

class StreamControllerState extends CommonState<StreamControllerFunc> {
  StreamController<String> controller;
  String data = '点击改变我的';
  int index;

  @override
  void initState() {
    super.initState();
    index = 0;
    controller = StreamController<String>();
    controller.stream.listen((e) {
      print('收到数据');
      setState(() {
        data = e;
      });
    }, onError: (e) {
      print('发生了错误');
    }, cancelOnError: false);
  }

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('使用StreamController可以实现监听功能'),
            Text('这种监听一般用在异步上面，在主线程监听数据，异步获取到数据后通知主线程更新数据'),
            Text('使用controller.stream.listen来设置监听接收数据'),
            Text('使用controller.sink.add接收数据'),
            Text('使用controller.sink.add可以多次发送数据'),
            Text('本例中点击按钮，按钮上面的文字改变'),
            Text(
              data,
              style: TextStyle(fontSize: 30, color: Colors.green,fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              onPressed: () {
                controller.sink.add('人生短短几个秋$index');
                index++;
              },
              child: Text('点击使用StreamController改变文本文字'),
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
