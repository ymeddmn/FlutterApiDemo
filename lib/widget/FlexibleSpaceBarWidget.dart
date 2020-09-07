import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class FlexibleSpaceBarWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return FlexibleSpaceBarState();
  }
}

class FlexibleSpaceBarState extends CommonState<FlexibleSpaceBarWidget> {
  @override
  Widget getBody() {
    return CustomScrollView(
      slivers: [buildFlexiblespackbar(), buildList()],
    );
  }

  buildFlexiblespackbar() {
    return SliverAppBar(
      expandedHeight: 200,
      toolbarHeight: 60,
      leading: Icon(Icons.arrow_back),
      actions: [Icon(Icons.games),Icon(Icons.nature)],
      backgroundColor: Colors.blue,
      pinned: true,
      //本例中pinned为true可以把sliverappbar固定在顶部，否则会被顶到屏幕外面
      flexibleSpace: FlexibleSpaceBar(
        title: Container(
          height:60,
          child: Text('滑动蜷缩'),
          alignment: Alignment.centerLeft,
        ),
        titlePadding: EdgeInsets.only(left: 50),
        collapseMode: CollapseMode.parallax,
        background: Image.asset('img/head.jpeg',fit: BoxFit.fitWidth,),
      ),
    );
  }

  buildList() {
    return SliverFixedExtentList(
      itemExtent: 20,
      delegate: SliverChildBuilderDelegate((context, index) => Container(
            child: Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Text(index.toString()),
                Spacer(
                  flex: 1,
                ),
                Icon(Icons.person),
                Spacer(
                  flex: 10,
                )
              ],
            ),
            height: 50,
            width: double.infinity,
          )),
    );
  }
}
