import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

/**
 * SizeBox用法
 */
class SizedBoxWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return SizedBoxState();
  }
}

class SizedBoxState extends CommonState<SizedBoxWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('使用SizeBox构造方法生成控件'),
            SizedBox(
              width: 200,
              height: 100,
              child: Container(
                color: Colors.green,
              ),
            ),
            WidgetUtils.getDivider(),
            Text('使用expand构造SizedBox控件，控件充满父容器'),
            Text('本例中父容器200，expand生成的子容器为100，但是还是填充满了200的长宽'),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: SizedBox.expand(
                child: Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            WidgetUtils.getDivider(),
            Text('使用fromSize方法构造的SizedBox'),
            SizedBox.fromSize(
              child: Container(
                color: Colors.red,
              ),
              size: Size(100, 100),
            )
          ],
        )
      ],
    );
  }
}
