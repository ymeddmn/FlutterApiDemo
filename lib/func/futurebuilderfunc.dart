import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

import 'dart:async';

class FutureBuilderWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return FutureBuilderState();
  }
}

class FutureBuilderState extends CommonState<FutureBuilderWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            FutureBuilder(
              builder: _buildWidget,
              future: _getData(),
            )
          ],
        )
      ],
    );
  }

  /**
   * 构建控件
   */
  Widget _buildWidget(BuildContext context, AsyncSnapshot snapshot) {
    Widget widget;
    switch (snapshot.connectionState) {
      case ConnectionState.none:
        widget = Text('请求未开始');
        break;
      case ConnectionState.active:
        widget = Text('请求活跃状态');
        break;
      case ConnectionState.waiting:
        widget = Text('请求等待中');
        break;
      case ConnectionState.done:
        widget = Text('请求结束');
        break;
      default:
    }
    return Container(
      child: widget,
    );
  }

  Future _getData() async {
    Future.delayed(Duration(seconds: 5),(){

    });
    return '请求结果';
  }
}
