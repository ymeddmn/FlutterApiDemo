import 'dart:convert' as convert;
import 'dart:core' as prefix0;
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class JsonFunc extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return JsonState();
  }
}

class JsonState extends CommonState<JsonFunc> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('json转化需要导包：如下'),
            Text('import dart:convert as convert;'),
            WidgetUtils.getDivider(),
            Text('本例实现将json字符串转化为自定义对象',style: TextStyle(color: Colors.green),),
            Text('转化出的是一个Map对象，我们可以把这个map对象再转化为一个自定义对象'),
            Text('转化代码如下'),
            Text(' var jsonMap = convert.jsonDecode(jsonStr);'),
            RaisedButton(
              child: Text('json字符串转化为对象'),
              onPressed: () {
                str2Json();
              },
            ),
            WidgetUtils.getDivider(),
            Text('将map对象转化为json字符串的方法',style: TextStyle(color: Colors.green)),
            Text('想把自定义的对象转化为json串，对象内部必须实现toJson方法，这个方法返回一个Map对象'),
            Text('var jsonStr = convert.jsonEncode(user);'),
            RaisedButton(
              child: Text('josn对象转化为json字符串'),
              onPressed: () {
                json2str();
              },
            ),
          ],
        )
      ],
    );
  }

  ///json字符串转化为json对象
  void str2Json() {
    String jsonStr = '''{
"name":"李白",
"age":12
}''';
    var jsonMap = convert.jsonDecode(jsonStr);
    var person = Person.fromJson(jsonMap);
    print('名字：' + person.name);
    print('年纪：${person.age}');
  }

  ///json对象转化为json字符串
  void json2str() {
    Person person = Person(name: '杜甫', age: 123);
    var jsonStr = convert.jsonEncode(person);
    print(jsonStr);
  }
}

class Person {
  String name;
  int age;

  Person({this.name, this.age});

  factory Person.fromJson(Map<String, dynamic> map) {
    return Person(name: map['name'], age: map['age']);
  }

  Map toJson() {
    Map map = Map();
    map['name'] = name;
    map['age'] = age;
    return map;
  }
}
