import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class GridViewWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return GridViewState();
  }
}

class GridViewState extends CommonState<GridViewWidget> {
  @override
  Widget getBody() {
    return GridView(
        scrollDirection: Axis.horizontal,
        reverse: false,
        children: buildChildrens(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20));
  }

  buildChildrens() {
    return [
      Text('gridDelegate：这个属性接收一个SliverGridDelegateWithFixedCrossAxisCount对象，对象里面可以设置每一行的元素数目，可以设置不同item水平和垂直方向的间距'),
      Text('scrollDirection:可以设置GridView滑动的方向，本例使用水平'),
      Text('reverse:可以设置正方向还是反方向展示'),

      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
      Container(
        width: 10,
        height: 10,
        color: Colors.green,
      ),
    ];
  }
}
