import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class ImageWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return ImageState();
  }
}

class ImageState extends CommonState<ImageWidget> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Image.asset(
              'img/head.jpeg',
              width: 100,
              height: 100,
            ),
            WidgetUtils.getDivider(),
            Text('fit:类似于ImageView的Scaletype'),
            Image.asset(
              'img/head.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.scaleDown,
            ),
            WidgetUtils.getDivider(),
            Text('使用color和colorBlendMode可以设置混合模式，就是ps中的混合模式，下面是一个深色的模式,够强大'),
            Image.asset(
              'img/head.jpeg',
              width: 100,
              height: 100,
              color: Colors.red,
              colorBlendMode: BlendMode.darken,
            ),
            WidgetUtils.getDivider(),
            Text('使用ClipRRect实现突破圆角'),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'img/head.jpeg',
                width: 100,
                height: 100,
                color: Colors.red,
                colorBlendMode: BlendMode.darken,
              ),
            ),
            WidgetUtils.getDivider(),
            Text('alignment:暂时没有找到这个属性的用处'),
            Image.asset(
              'img/head.jpeg',
              width: 100,
              height: 100,
              alignment: Alignment(20, 20),
            ),
            WidgetUtils.getDivider(),
            Text('其它'),
            Text("centerSlide:只能用在.9图上，具体用法还没用过"),
          ],
        )
      ],
    );
  }
}
