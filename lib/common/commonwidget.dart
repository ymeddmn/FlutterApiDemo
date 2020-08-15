import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
abstract class CommonWidget extends StatefulWidget {}

abstract class CommonState<T extends CommonWidget> extends State<T> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates:[GlobalMaterialLocalizations.delegate,GlobalWidgetsLocalizations.delegate],
        supportedLocales: [const Locale('zh', 'CH')],
      home: Scaffold(
        appBar: AppBar(leading:IconButton(
          padding: EdgeInsets.all(13),
          icon: Container(
            child: CircleAvatar(
              backgroundImage: AssetImage('img/head.jpeg'),
            ),
          ),
        ),),
        body: Container(
          child: getBody(),
        ),
      ),
    );
  }

  Widget getBody();
}
