import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';
import 'package:flutterdemo/widget/appbarwidget1.dart';
import 'package:flutterdemo/widget/appbarwidget2.dart';

class AppbarWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return AppbarState();
  }
}

class AppbarState extends CommonState<AppbarWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('使用官方提供的Appbar'),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Page1Widget()));
              },
              child: Text('点击进入新页面查看appbar效果'),
            ),
            WidgetUtils.getDivider(),
            Text('使用PreferredSize实现自定义appbar'),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Page2Widget()));
              },
              child: Text('点击进入自定义的appbar'),
            ),
            WidgetUtils.getDivider(),
            Text('使用PreferredSizeWidget定义的widget'),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Page3Widget()));
              },
              child: Text('点击进入自定义的appbar'),
            )
          ],
        )
      ],
    );
  }
}

class Page1Widget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page1State();
  }
}

class Page1State extends State<Page1Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('标题'),
        flexibleSpace: Center(
          child: Text('flexiblespace'),
        ),
        elevation: 50,
        bottomOpacity: 0.5,
        toolbarOpacity: 0.5,
        titleSpacing: 30,
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: Colors.pink,
        actions: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.ac_unit),
          Icon(Icons.ac_unit),
        ],
        leading: Icon(Icons.accessibility),
      ),
      body: ListView(
        children: <Widget>[
          WidgetUtils.getDivider(),
          Text('title:设置Appbar标题，标题是一个控件'),
          WidgetUtils.getDivider(),
          Text('leading:这个属性可以设置左上角的图标'),
          WidgetUtils.getDivider(),
          Text('actions:这个属性可以再右上角设置多个图标'),
          WidgetUtils.getDivider(),
          Text('centerTitle:这个属性可以设置标题是否居中显示'),
          WidgetUtils.getDivider(),
          Text('automaticallyImplyLeading:这个属性用来控制是否显示leading'),
          Text('只有leading没有设置控件的时候automaticallyImplyLeading属性才会生效'),
          Text('我们也可以通过给leading设置一个null来控制leading不展示'),
          WidgetUtils.getDivider(),
          Text('backgroundColor:这个属性可以用来设置标题栏背景色'),
          WidgetUtils.getDivider(),
          Text('flexibleSpace:这个属性可以在Appbar的背景设置一个容器，随意显示内容，本例我展示了一个Center'),
          WidgetUtils.getDivider(),
          Text('elevation:设置导航栏下面的阴影高度,是渐变的'),
          WidgetUtils.getDivider(),
          Text('titleSpacing:标题与其它控件之间的间距,值设置太大就不能展示了，只能展示三个点'),
          WidgetUtils.getDivider(),
          Text('toolbarOpacity:appbar区域内所有内容的透明度 值是0到1'),
          Text('bottomOpacity:appbar底部区域内所有内容的透明度 值是0到1'),
          WidgetUtils.getDivider(),
        ],
      ),
    );
  }
}
