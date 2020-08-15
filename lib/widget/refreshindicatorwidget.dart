import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class RefreshIndicatorWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return RefreshIndicatorState();
  }
}

class RefreshIndicatorState extends CommonState<RefreshIndicatorWidget> {
  @override
  Widget getBody() {
    return RefreshIndicator(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              WidgetUtils.getDivider(),
              Text('实现下拉刷新功能'),
              Container(
                height: 80,
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
              ), Container(
                height: 80,
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
              ), Container(
                height: 80,
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
              ), Container(
                height: 80,
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
              ), Container(
                height: 80,
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
              ), Container(
                height: 80,
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
              ), Container(
                height: 80,
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
              ), Container(
                height: 80,
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
              ), Container(
                height: 80,
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
              ), Container(
                height: 80,
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
              ), Container(
                height: 80,
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
              ),
            ],
          ),
        ),
        onRefresh: () async {
          print('下拉刷新');
          var future = Future.delayed(Duration(seconds: 1));
          return future;
        });
  }
}
