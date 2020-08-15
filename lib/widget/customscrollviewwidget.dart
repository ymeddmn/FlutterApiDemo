import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';


class CustomScrollViewWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomScrollState();
  }
}

class CustomScrollState extends CommonState<CustomScrollViewWidget> {

  @override
  Widget getBody() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate((content, index) {
            return Container(
              height: 240,
              alignment: Alignment.center,
              color: Colors.primaries[index % Colors.primaries.length],
              child: Column(
                children: <Widget>[
                  Text(
                      'ListView和GridView相互嵌套场景，ListView嵌套GridView时，需要给GridView指定高度，但我们希望高度随内容而变化（不指定），ListView和GridView使用同一个滚动效果。'),
                  Text(
                      '一个页面顶部是AppBar，然后是GridView，最后是ListView，这3个区域以整体来滚动，AppBar具有吸顶效果。'),
                ],
              ),
            );
          }, childCount: 1),
        ),
        SliverGrid.count(crossAxisCount: 4,children: List.generate(8, (index){
          return Container(
            color: Colors.primaries[index%Colors.primaries.length],
            alignment: Alignment.center,
            child: Text('$index',style: TextStyle(color: Colors.white,fontSize: 20),),
          );
        }).toList(),),
        SliverList(
          delegate: SliverChildBuilderDelegate((content, index) {
            return Container(
              height: 85,
              alignment: Alignment.center,
              color: Colors.primaries[index % Colors.primaries.length],
              child: Text('$index',style: TextStyle(color: Colors.white,fontSize: 20),),
            );
          }, childCount: 6),
        )
      ],
    )
    ;
  }
}