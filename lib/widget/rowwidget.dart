import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class RowWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return RowState();
  }
}

class RowState extends CommonState<RowWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Text('主轴spaceAround：widget间距等分，距离两边距离也有(距离两边的距离比widget中间的间距距离小)'),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              )
            ],
          ),
        ),
        WidgetUtils.getDivider(),
        Text('spaceBetween:widget间距等分，距离两边没有距离'),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              )
            ],
          ),
        ),
        WidgetUtils.getDivider(),
        Text('spaceEvenly:widget的间距和距离两边的距离相同'),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              )
            ],
          ),
        ),
        WidgetUtils.getDivider(),
        Text('下面这样的效果，Row中我们想两个控件中间有间距的时候使用SizedBox就可以实现，'
            '如果我们想右边的监听在横向的最右边那么只需要给中间的控件使用Expanded包裹就可以实现'),
        Container(
          height: 80,
          color: Color(0xffed9834),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 15,
              ),
              Icon(Icons.monetization_on,color: Colors.white,),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text('钱包',style: TextStyle(color: Colors.white),),
              ),
              Icon(Icons.arrow_right,color: Colors.white,),
              SizedBox(
                width: 15,
              )
            ],
          ),
        )
      ],
    );
  }
}
