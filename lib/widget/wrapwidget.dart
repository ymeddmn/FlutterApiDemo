import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class WrapWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return WrapState();
  }
}

class WrapState extends CommonState<WrapWidget> {
  @override
  Widget getBody() {
    return Wrap(

      children: <Widget>[
        Container(
          margin: EdgeInsets.all(30),
          alignment: Alignment.center,
          width: double.infinity,
          height: 90,
          color: Colors.red,
          child: Text('Wrap控件可以展示多个控件',style: TextStyle(color: Colors.white,fontSize: 30),),
        ),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
        getView(),
      ],
    );
  }

  getView() {
    return Container(
      margin: EdgeInsets.all(20),
      width: 50,
      height: 40,
      color: Colors.green,
    );
  }
}
