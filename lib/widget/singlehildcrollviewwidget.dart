import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class SingleChildScrollViewWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return SingleChildScrollViewState();
  }
}

class SingleChildScrollViewState
    extends CommonState<SingleChildScrollViewWidget> {
  @override
  Widget getBody() {
    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: 200,),
      child: Column(
        children: buildChildrens(),
      ),
    );
  }

  buildChildrens() {
    return [
      Text(
          'gridDelegate：这个属性接收一个SliverGridDelegateWithFixedCrossAxisCount对象，对象里面可以设置每一行的元素数目，可以设置不同item水平和垂直方向的间距'),
      Text('scrollDirection:可以设置GridView滑动的方向，本例使用水平'),
      Text('reverse:可以设置正方向还是反方向展示'),
      Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(), Container(
        width: double.infinity,
        height: 100,
        color: Colors.green,
      ),
      WidgetUtils.getDivider(),

    ];
  }
}
