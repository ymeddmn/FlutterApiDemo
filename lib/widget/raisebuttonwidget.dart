import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class RaiseButtonWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return RaiseButtonState();
  }
}

class RaiseButtonState extends CommonState<RaiseButtonWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('textColor:文本颜色'),
            Text('color:按钮颜色'),
            Text('highlightColor:长按按钮的时候显示的颜色'),
            Text('focusColor、hoverColor:使用后没效果应该是网页上使用的功能'),
            RaisedButton(
              highlightColor: Colors.red,
              hoverColor: Colors.blue,
              focusColor: Colors.green,
              color: Colors.yellow,
              textColor: Colors.pink,
              onPressed: () {},
              child: Text(
                '按钮',
              ),
            ),
            WidgetUtils.getDivider(),
            Text('splashColor:水波纹的颜色'),
            Text('elevation:按钮下面的引用'),
            Text('padding:设置内间距'),
            RaisedButton(
              child: Text('按钮'),
              onPressed: () {},
              splashColor: Colors.green,
              elevation: 5,
              padding: EdgeInsets.all(20),
            ),
            WidgetUtils.getDivider(),
            Text('shape:BeveledRectangleBorder  :可以设置按钮的边框，边框颜色，四个角的弧度'),
            RaisedButton(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: Text('按钮'),
              onPressed: () {},
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                  side: BorderSide(width: 3, color: Colors.green)),
            ),
            WidgetUtils.getDivider(),
            Text('animationDuration:目前不知道咋用'),
            RaisedButton(
              onPressed: (){},
              child: Text('按钮'),
              splashColor: Colors.green,
              padding: EdgeInsets.fromLTRB(90, 40, 40, 90),
              animationDuration: Duration(seconds: 10),
            ),
            WidgetUtils.getDivider(),
          ],
        )
      ],
    );
  }
}
