import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/other/streampage.dart';
import 'package:flutterdemo/utils/BroadCastUtils.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class StreamControllerBroadCaseFunc extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return StreamControllerBroadCaseState();
  }
}

class StreamControllerBroadCaseState extends CommonState {
  String data = '到下个页面可以改变我的内容';

  @override
  void initState() {
    super.initState();
    BroadCast.scribe((data) {
      //监听数据改变
      setState(() {
        this.data = data;
      });
    });
  }

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('使用StreamController全局广播，我们可以再下一个页面改变本页面的值'),
            Text(
              data,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return StreamPage();
                }));
              },
              child: Text('跳转到一个新页面更新本页面文本'),
            )
          ],
        )
      ],
    );
  }
}
