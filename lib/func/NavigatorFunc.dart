import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/func/NavigateByName.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class NavigatorFunc extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigatorState();
  }
}

class NavigatorState extends CommonState<NavigatorFunc> {
  var dataResult = '';

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('实现点击按钮调到下一个页面，并且从下一个页面返回的时候可以把值返回回来'),
            Text(
                '实现方式：本页面在一个异步方法中进行Navigator的跳转，Navigator的返回值使用await修饰，这样就能等待后面的页面返回值了'),
            Container(
              width: 300,
              height: 200,
              color: Colors.green,
              child: Text(
                dataResult,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            RaisedButton(
              child: Text('点击调到下一个页面，并且等待返回值'),
              onPressed: () {
                toNestPage();
              },
            ),
            WidgetUtils.getDivider(),
            Text('使用页面路由的方式实现页面跳转'),
            RaisedButton(
              onPressed: _navigaterByName,
              child: Text('点击我跳转到功能页面'),
            )
          ],
        )
      ],
    );
  }

  void toNestPage() async {
    var result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NavigatorDetailWidget();
    }));
    print("返回值：" + result);
    setState(() {
      dataResult = result;
    });
  }

  void _navigaterByName() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NavigateByName();
    }));
  }
}

class NavigatorDetailWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigatorDetailState();
  }
}

class NavigatorDetailState extends CommonState<NavigatorDetailWidget> {
  TextEditingController controller = TextEditingController();

  @override
  Widget getBody() {
    return Column(
      children: <Widget>[
        WidgetUtils.getDivider(),
        Text('在本页面输入值，然后点击按钮会把文字返回给上一个页面'),
        TextField(
          controller: controller,
        ),
        Text('将返回值设置到Navigator的pop方法的第二个参数就可以返回给上一个页面了'),
        RaisedButton(
          child: Text('点击返回字符串给上一个页面'),
          onPressed: () {
            Navigator.pop(context, controller.text);
          },
        ),
      ],
    );
  }
}
