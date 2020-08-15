import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class NotificationListenerWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return NotificationListenerState();
  }
}

class NotificationListenerState
    extends CommonState<NotificationListenerWidget> {
  @override
  Widget getBody() {
    return NotificationListener(
        onNotification: (ScrollNotification notification) {
          var metrics = notification.metrics;
          metrics.pixels; //滑动的当前位置
          metrics.minScrollExtent; //最小滑动距离
          metrics.viewportDimension; //滚动控件的长度
          metrics.axisDirection; //滚动的方向，上下左右
          metrics.axis; //滚动控件的轴向，横向或者纵向
          metrics.outOfRange; //是否超出滚动范围
          metrics.atEdge; //是否在边缘
          metrics.extentBefore; //距离开始位置的距离
          metrics.extentAfter; //距离结束位置的距离
          metrics.extentInside; //控件范围列表内的列表长度

          return true;
        },
        child: ListView.builder(
            itemCount: 70,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30),
                height: index == 0 ? 500 : 60,
                color: Colors.green,
                child: index == 0
                    ? Column(
                        children: <Widget>[
                          Text('使用NotificationListener包裹滑动控件可以监听滑动控件的滑动状态'),
                          Text('比如本例中我们可以获取滑动的滑动位置、滑动是否到底部、是否超出滚动范围'),
                          Text('当我们滚动控件的时候，回调的参数会打印下面这些参数'),
                          Text('  metrics.pixels;//滑动的当前位置'),
                          Text('metrics.minScrollExtent;//最小滑动距离'),
                          Text('metrics.viewportDimension;//滚动控件的长度'),
                          Text('metrics.axisDirection;//滚动的方向，上下左右'),
                          Text('metrics.axis;//滚动控件的轴向，横向或者纵向'),
                          Text('metrics.outOfRange;//是否超出滚动范围'),
                          Text('metrics.atEdge;//是否在边缘'),
                          Text('metrics.extentBefore;//距离开始位置的距离'),
                          Text('metrics.extentAfter;//距离结束位置的距离'),
                          Text('  metrics.extentInside;//控件范围列表内的列表长度'),
                        ],
                      )
                    : Text(
                        '$index',
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
              );
            }));
  }
}
