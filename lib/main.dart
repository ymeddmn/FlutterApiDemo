import 'package:flutter/material.dart';
import 'package:flutterdemo/bean/beans.dart';
import 'package:flutterdemo/common/searchresult.dart';
import 'package:flutterdemo/utils/constants.dart';
import 'package:flutterdemo/widget/listwidget.dart';

void main() {
  runApp(HomeWidget());
}

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('功能列表'),
          centerTitle: true,
          leading: IconButton(
            padding: EdgeInsets.all(13),
            icon: Container(
              child: CircleAvatar(
                backgroundImage: AssetImage('img/head.jpeg'),
              ),
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[NavigateWidget(0), NavigateWidget(1),NavigateWidget(2),NavigateWidget(3)],
        ),
      ),
    );
  }
}

class NavigateWidget extends StatelessWidget {
  int index;

  NavigateWidget(this.index);

  @override
  Widget build(BuildContext context) {
    return getBtnList(context, index);
  }

  Widget getBtnList(BuildContext context, int index) {
    Widget widget;
    switch (index) {
      case 0:
        widget = RaisedButton(
          child: Text('控件列表'),
          onPressed: () {
            exchangeRoutes(Constants.routes);//
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ListWidget()));
          },
        );
        break;
      case 1:
        widget = RaisedButton(
          child: Text('功能列表'),
          onPressed: () {
            exchangeRoutes(Constants.routesFunc);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ListWidget()));
          },
        );
        break;
      case 2:
        widget = RaisedButton(
          child: Text('dart语法知识点'),
          onPressed: () {
            exchangeRoutes(Constants.routesDart);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ListWidget()));
          },
        );
        break;
      case 3:
        widget = RaisedButton(
          child: Text('flutter ui效果'),
          onPressed: () {
            exchangeRoutes(Constants.uiRoutes);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ListWidget()));
          },
        );
        break;
    }
    if (widget == null) {
      return Container();
    }
    return widget;
  }

  void exchangeRoutes(List<PageBean> routes) {
    Constants.currRoutes.clear();
    Constants.currRoutes.addAll(routes);
  }
}
