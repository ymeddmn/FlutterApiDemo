import 'package:flutter/cupertino.dart';

class PageBean {
  Widget route; //路由

  String funcName; //页面名称
  String fileName; //功能对应的文件名
  String searchText; //搜索关键字

  PageBean(
      this.funcName, this.route, this.fileName, this.searchText); //所在的文件的名称
}
