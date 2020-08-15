import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePrefWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return SharePreState();
  }
}

class SharePreState extends CommonState<SharePrefWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('使用SharePreference需要导入如下依赖'),
            Text('shared_preferences: ^0.5.1'),
            RaisedButton(child: Text('点击复制依赖到剪贴板'), onPressed: () {
              Clipboard.setData(
                  ClipboardData(text: 'shared_preferences: ^0.5.1'));
            },),
            WidgetUtils.getDivider(),
            Text('SharePreference使用方法'),
            Text('1、获取SharePreference实例'),
            Text(' final share = await SharedPreferences.getInstance();'),
            WidgetUtils.getDivider(),
            Text('存数据方法'),
            Text('bool isNoFirst = share.getBool("isNoFirst");'),
            RaisedButton(
              child: Text('点击存储'),
              onPressed: () {
                setData();
              },
            ),
            WidgetUtils.getDivider(),
            Text('取数据方法'),
            Text('share.setBool("isFirst", true);'),
            RaisedButton(
              child: Text('点击取出存取数据'),
              onPressed: () {
                getData();
              },
            ),
          ],
        )
      ],
    );
  }

  Future getData() async {
    final share = await SharedPreferences.getInstance();
    var bool = share.getBool('isFirst');
  }

  Future setData() async {
    var share = await SharedPreferences.getInstance();
    share.setBool("isFirst", true);
  }
}
