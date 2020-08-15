import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';
import 'package:flutterdemo/utils/screen.dart';

class AnimatedCrossFadeWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatedCrossFadeState();
  }
}

class AnimatedCrossFadeState extends CommonState<AnimatedCrossFadeWidget> {
  bool showFirst = true;

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('两个控件之间交替进行展示'),
            Container(
              alignment: Alignment.center,
                width: Screen.width,
                height: Screen.width,
                child: AnimatedCrossFade(
                    firstCurve: Curves.linear,
                    secondCurve: Curves.linear,
                    sizeCurve: Curves.linear,
                    firstChild: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                    ),
                    secondChild: Container(
                      width: Screen.width,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: Screen.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange),
                    ),
                    crossFadeState: showFirst
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: Duration(seconds: 3)),
            ),
            RaisedButton(
              child: Text('切换AnimatedCrossFade中两个控件的状态'),
              onPressed: () {
                setState(() {
                  showFirst = !showFirst;
                });
              },
            )
          ],
        )
      ],
    );
  }
}
