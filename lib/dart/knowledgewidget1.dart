import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class KnowLedgeWidget1 extends CommonWidget{
  @override
  State<StatefulWidget> createState() {
    return KnowLedgeState();
  }
}

class KnowLedgeState extends CommonState<KnowLedgeWidget1>{
  @override
  Widget getBody() {
    return Html(data: 'https://www.baidu.com/');
  }

}