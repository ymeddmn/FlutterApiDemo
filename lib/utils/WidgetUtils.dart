import 'package:flutter/material.dart';

class WidgetUtils {
  static Widget getDivider() {
    return Container(width: double.infinity,height: 80,child: Divider(color: Colors.red,),);
  }
}
