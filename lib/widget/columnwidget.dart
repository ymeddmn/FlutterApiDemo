import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

/**
 * Column控件
 */
class ColumnWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return ColumnState();
  }
}

class ColumnState extends CommonState<ColumnWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Text('crossAxisAlignment:设置次轴的对齐方式'),
        Text('mainAxisAlignment:设置主轴的对齐方式'),
        Text('主轴的值可以是：spaceAround、center、spaceBetween、start、end、spaceEvenly'),
        Text('本例中主轴和次轴都设置居中'),
        Container(
          color: Colors.red,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 20,
                color: Colors.green,
                margin: EdgeInsets.only(top: 10),
              )
            ],
          ),
        ),
        WidgetUtils.getDivider(),
        Text(
            'Column布局中，当我们想让最后的那个控件在Column的末尾的时候，我们只需要'
                '把中间的黄色widget用Expanded包裹就好了，这样中间的widget就是横向充满，第三个widget就被挤到边缘了'),
        Container(
          color: Colors.green,
          height: 200,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 40,
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  height: 40,
                ),
              ),
              Container(
                color: Colors.pink,
                height: 40,
              )
            ],
          ),
        ),

      ],
    );
  }
}
