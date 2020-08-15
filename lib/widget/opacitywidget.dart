import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class OpacityWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return OpacityState();
  }
}

class OpacityState extends CommonState<OpacityWidget> {
  double _alpha = 1;

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('Opacity可以实现控件透明度效果'),
            Text('opacity:这个属性设置透明度，0是完全透明，1是完全不透明'),
            Text('在Stack中添加Opacity控件，添加透明度和颜色可以实现模板功能'),
            Opacity(
              opacity: _alpha,
              child: Image.asset('img/head.jpeg', width: 200, height: 200,),
            ),
            RaisedButton(
              child: Text('点击设置图像透明度'),
              onPressed: () {
                setState(() {
                  _alpha = 0.3;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
