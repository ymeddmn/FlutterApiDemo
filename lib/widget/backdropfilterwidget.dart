import 'dart:ui' as prefix0;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix1;
import 'package:flutterdemo/common/commonwidget.dart';

class BackDropFilterWidget extends CommonWidget{
  @override
  State<StatefulWidget> createState() {
    return BackDropFilterState();
  }
}


class BackDropFilterState extends CommonState<BackDropFilterWidget>{
  @override
  Widget getBody() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 300,
          height: 400,
          child: Image.asset('img/head.jpeg'),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
          child: Center(
            child: Container(
              color: Colors.red.withOpacity(0),
              child: Text('使用BackdropFilter可以实现控件模糊效果',style: prefix1.TextStyle(fontSize: 40,color: Colors.red),),
            ),
          ),
        )
      ],
    );
  }
}