import 'package:flutter/material.dart';
import 'package:flutterdemo/bean/beans.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/constants.dart';
import 'package:flutterdemo/widget/listwidget.dart';

import '../main.dart';

class SearchResultWidget extends CommonWidget{
  List<PageBean> datas=[];

  SearchResultWidget(this.datas);

  @override
  State<StatefulWidget> createState() {
    return SearchResultState();
  }
}

class SearchResultState extends CommonState<SearchResultWidget>{
  @override
  Widget getBody() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListItem(widget.datas[index]);
      },
      itemCount: widget.datas.length,
    );
  }
}