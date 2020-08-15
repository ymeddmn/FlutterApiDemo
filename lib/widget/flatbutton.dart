import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class FlatButtonWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return FlatButtonState();
  }
}

class FlatButtonState extends CommonState<FlatButtonWidget> {
  @override
  Widget getBody() {
    return Container(
      child: ListView(
        children: <Widget>[
          Text('FlatButton按钮的效果必须是给设置onPressed之后才有效'),
          Text('textColor设置文字颜色'),
          Text('color设置按钮背景颜色'),
          Text('shape属性'),
          Text('        shape属性中的borderRadius可以设置圆角'),
          Text('        slide：可以设置边框的颜色和宽度'),
          Column(
            children: <Widget>[
              FlatButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Container(
                  width: 200,
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    '哈哈',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.green, width: 3)),
              )
            ],
          )
        ],
      ),
    );
  }
}
