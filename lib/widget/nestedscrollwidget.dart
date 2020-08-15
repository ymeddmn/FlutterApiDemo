import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class NestedScrollWidget extends CommonWidget{
  @override
  State<StatefulWidget> createState() {
    return NestedScrollState();
  }
}


class NestedScrollState extends CommonState<NestedScrollWidget>{
  @override
  Widget getBody() {
    return NestedScrollView(
      
    );
  }
}