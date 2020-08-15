import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class FutureWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return FutureState();
  }
}

class FutureState extends CommonState<FutureWidget> {
  String data = '点击按钮改变文本';

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('future中的几个函数'),
            Text('then:异步操作逻辑在这里写'),
            Text('whenComplete：异步操作完成的时候回调'),
            Text('catchError:捕获异常或异步出错的时候的回调'),
            Text(
              data,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              child: Text('点击按钮实现异步任务'),
              onPressed: () {
                invokeAsync();
              },
            ),
            WidgetUtils.getDivider(),
            Text('Future.wait:等到多个任务执行结束后再执行操作'),
            Text('要先分别从两个网络接口获取数据，获取成功后，我们需要将两个接口数据进行特定的处理后再显示到UI界面上，应该怎么做？答案是Future.wait'),
            Text('本例中：我们通过模拟Future.delayed 来模拟两个数据获取的异步任务，等两个异步任务都执行成功时，将两个异步任务的结果拼接打印出来'),
            Text(data),
            RaisedButton(
              child: Text('点击开始异步任务'),
              onPressed: (){
                _invokeAsync1();
              },
            ),
            Text('async用来表示函数是异步的，定义的函数会返回一个Future对象，可以使用then方法添加回调函数'),
            Text('await 后面是一个Future，表示等待该异步任务完成，异步完成后才会往下走；await必须出现在 async 函数内部')

          ],
        )
      ],
    );
  }

  Future invokeAsync() async {
    Future<String> future = Future<String>(() => null);
    await future
        .then((value) {
          print('执行异步任务');
          setState(() {
            data = '异步线程改变内容';
          });
        })
        .whenComplete(() {})
        .catchError((value) {});
  }

  void _invokeAsync1() {
    Future.wait([
      // 2秒后返回结果
      Future.delayed(new Duration(seconds: 1), () {
        return "hello";
      }),
      // 4秒后返回结果
      Future.delayed(new Duration(seconds: 2), () {
        return " world";
      })
    ]).then((results){
      setState(() {
        data='所有异步任务都执行完成';
      });
    }).catchError((e){
      print(e);
    });
  }
}
