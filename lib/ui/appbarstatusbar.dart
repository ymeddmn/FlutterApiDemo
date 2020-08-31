import 'package:flutter/material.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';
import 'dart:ui';

class AppbarStatusbarFunc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    var top = MediaQueryData.fromWindow(window).padding.top;
    return AppbarStatusbarState();
  }
}

class AppbarStatusbarState extends State<AppbarStatusbarFunc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
            child: SafeArea(
              child: Offstage(),
              top: true,//设置为truebody内容不会顶到状态栏上面，false会顶到状态栏上面
            ),
            preferredSize:
                Size.fromHeight(MediaQueryData.fromWindow(window).padding.top)),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.green,
                width: double.infinity,
                height: 100,
              ),
              WidgetUtils.getDivider(),
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
