import 'package:flutter/material.dart';
import 'package:flutterdemo/utils/screen.dart';

class Page3Widget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page3State();
  }
}

class Page3State extends State<Page3Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('自定义appbar方法2,使用PreferredSizeWidget实现'),
      ),
      appBar:MyAppBar()
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(null, 100),
      child:Container(
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
    );
  }

  @override
  Size get preferredSize =>
      new Size(Screen.width, 70);
}