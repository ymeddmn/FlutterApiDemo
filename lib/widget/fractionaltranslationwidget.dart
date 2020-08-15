import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class FractionalTranslationWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return FractionalTranslationState();
  }
}

class FractionalTranslationState
    extends CommonState<FractionalTranslationWidget> {
  @override
  Widget getBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        WidgetUtils.getDivider(),
        Text('FractionalTranslation可以设置内部子widget的xy便宜量'),
        Text('通过业主translation属性的值（类型Offset）实现便宜'),
        Text('Offset的第一个参数设置为1代表x轴方向便宜了自身宽度的距离'),
        Text('Offset第二个参数设置为1代表y轴方向便宜了自身高度的距离'),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          child: FractionalTranslation(
            translation: Offset(1, 0.5),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
        )
      ],
    );
  }
}
