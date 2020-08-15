import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class ContainerWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return ContainerState();
  }
}

class ContainerState extends CommonState<ContainerWidget> {
  @override
  Widget getBody() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('alignment:对齐，横向靠右，竖向居中'),
              Container(
                alignment: Alignment.centerRight,
                color: Colors.green,
                width: 200,
                height: 200,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
              WidgetUtils.getDivider(),
              Text(
                  'constraints:可以设置,这个属性是用来约束子widget的,设置外部的最打高度是100，然后设置内部高度200，高度智能是100不会是200'),
              Container(
                  color: Colors.green,
                  child: Container(
                    color: Colors.red,
                    height: 200,
                    width: 200,
                  ),
                  constraints: BoxConstraints(maxHeight: 100, maxWidth: 100)),
              WidgetUtils.getDivider(),
              Text('transform：通过这个属性可以设置Container沿着z轴旋转'),
              Text('旋转的中心是控件的左上角'),
              Text('使用transform进行旋转的时候，设置值为3.14会旋转一圈，值为正顺时针旋转'),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(3.14 / 4),
              ),
              WidgetUtils.getDivider(),
              Text('color和decoration不可以同时设置，会报错'),
              Text(
                  'decoration的border:Border.all(color: Colors.green,width: 3)可以设置边框'),
              Text('borderRadius:设置decoration的边框弧度'),
              Text('borderRadius：设置渐变'),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 3),
                  gradient:
                      RadialGradient(colors: [Colors.yellow, Colors.green]),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              WidgetUtils.getDivider(),
              Text('decoration：可以设置shape可以设置容器的形状'),
              Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              ),
              WidgetUtils.getDivider(),
              Text('boxShadow：可以设置多个阴影'),
              Container(
                width: 100,
                height: 100,

               decoration: BoxDecoration(
                 color: Colors.green,
                 boxShadow: [BoxShadow(color: Colors.red,offset: Offset(10,10)),BoxShadow(color: Colors.blue,offset: Offset(5,4))]
               ),
              ),
              WidgetUtils.getDivider(),
            ],
          )
        ],
      ),
    );
  }
}
