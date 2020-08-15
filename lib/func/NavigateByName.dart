//通过页面路由的方式实现跳转

import 'package:flutter/material.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class NavigateByName extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigateByNameState();
  }
}

class NavigateByNameState extends State<NavigateByName> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/navigate1': (BuildContext context) => NavigateByName2()},
      home: NavigateByName1(),
    );
  }
}

class NavigateByName1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          WidgetUtils.getDivider(),
          Text('pushNamed方法中的参数arguments，可以携带参数传递给下一个页面'),
          Text('在下一个页面获取数据的方式如下'),
          Text(' String value = ModalRoute.of(context) .settings .arguments;'),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/navigate1',
                  arguments: "我就是要传递的参数");
            },
            child: Text('点击跳转到下一个页面'),
          )
        ],
      ),
    );
  }
}

class NavigateByName2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              WidgetUtils.getDivider(),
              Text(
                  '获取传递过来的参数并显示：var arguments = ModalRoute.of(context).settings.arguments;'),
              Text(
                arguments,
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
              Text('向上一级页面返回数据的方式不变')
            ],
          ),
        ),
      ),
    );
  }
}
