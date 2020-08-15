import 'package:flutter/material.dart';

class Page2Widget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page2State();
  }
}

class Page2State extends State<Page2Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('自定义appbar方法1,使用PreferredSize实现'),
      ),
      appBar: PreferredSize(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 26, //设置距离顶部距离,正常应该是这种状态栏高度
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.arrow_back),
                      Expanded(
                        child: Center(
                          child: Text('标题'),
                        ),
                      ),
                      Icon(Icons.accessibility)
                    ],
                  ),
                )
              ],
            ),
          ),
          preferredSize: Size(100, 70)),
    );
  }
}
