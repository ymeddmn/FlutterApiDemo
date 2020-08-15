import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class KnowLedgeWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return KnowLedgeState();
  }
}

class KnowLedgeState extends CommonState<KnowLedgeWidget> {
  List<String> datas = <String>[
    '使用连续三个单引号或者三个双引号实现多行字符串对象的创建',
    '使用 r 前缀，可以创建 “原始 raw” 字符串',
    '在 Dart 中的 Array 就是 List 对象， 通常称之为 List',
    'dart创建空集合的方法  var names = <String>{}',
    'dart中数组是使用中括号表示的，集合使用大括号',
    'dart创建map的方式有下面两种',
    '''6、var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};''',
    '''var gifts = Map();
gifts['first'] = 'partridge';''',
    'Dart 是一门真正面向对象的语言， 甚至其中的函数也是对象，并且有它的类型 Function 。 这也意味着函数可以被赋值给变量或者作为参数传递给其他函数。',
    '=> expr 语法是 { return expr; } 的简写。 => 符号 有时也被称为 箭头 语法',
    ' .. 语法为 级联调用 （cascade）。 使用级联调用， 可以简化在一个对象上执行的多个操作。',
    '''使用 = 为变量赋值。 使用 ??= 运算符时，只有当被赋值的变量为 null 时才会赋值给它。

// 将值赋值给变量a
a = value;
// 如果b为空时，将变量赋值给b，否则，b的值保持不变。
b ??= value;''',
    '''通过 构造函数 创建对象。 构造函数的名字可以是 ClassName 或者 ClassName.identifier。例如， 以下代码使用 Point 和 Point.fromJson() 构造函数创建 Point 对象：

var p1 = Point(2, 2);
var p2 = Point.fromJson({'x': 1, 'y': 2});''',
    '''未初始化实例变量的默认人值为 “null” 。

所有实例变量都生成隐式 getter 方法。 非 final 的实例变量同样会生成隐式 setter 方法''',
    '在没有声明构造函数的情况下， Dart 会提供一个默认的构造函数。 默认构造函数没有参数并会调用父类的无参构造函数',
    '子类不会继承父类的构造函数。 子类不声明构造函数，那么它就只有默认构造函数 (匿名，没有参数) 。',
    '切记，构造函数不能够被继承， 这意味着父类的命名构造函数不会被子类继承。 如果希望使用父类中定义的命名构造函数创建子类， 就必须在子类中实现该构造函数。',
    '''重定向构造函数
有时构造函数的唯一目的是重定向到同一个类中的另一个构造函数。 重定向构造函数的函数体为空， 构造函数的调用在冒号 (:) 之后。

class Point {
  num x, y;

  // 类的主构造函数。
  Point(this.x, this.y);

  // 指向主构造函数
  Point.alongXAxis(num x) : this(x, 0);
}
''',
    '工厂构造函数(这个知识点没理解以后遇到在学习)',
    '''要延迟加载一个库，需要先使用 deferred as 来导入：

import 'package:greetings/hello.dart' deferred as hello;
延迟加载的好处：
1、减少 APP 的启动时间。
2、执行 A/B 测试，例如 尝试各种算法的 不同实现。
3、加载很少使用的功能，例如可选的屏幕和对话框。
''',
    'dart生成器功能（需要去仔细了解，目前还没有学习）',
    '''Isolates
大多数计算机中，甚至在移动平台上，都在使用多核CPU。 为了有效利用多核性能，开发者一般使用共享内存数据来保证多线程的正确执行。 然而， 多线程共享数据通常会导致很多潜在的问题，并导致代码运行出错。

所有 Dart 代码都在隔离区（ isolates ）内运行，而不是线程。 每个隔离区都有自己的内存堆，确保每个隔离区的状态都不会被其他隔离区访问。''',
    'Typedefs：需要学习研究',
    '',
    '',
    '',
    '',
    '',
    '下面是在文本中写入很多表情的方法',
    new String.fromCharCodes(new Runes(
        '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d} ')),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: getWidgets(),
          ),
        )
      ],
    );
  }

  getWidgets() {
    return List.generate(datas.length, (index) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: '${index + 1}、  ', style: TextStyle(color: Colors.red)),
              TextSpan(
                  text: datas[index], style: TextStyle(color: Colors.black)),
            ]),
          ),
          Divider(
            color: Colors.green,
          )
        ],
      );
    });
  }
}
