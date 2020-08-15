import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';

class TextFieldWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return TextFieldState();
  }
}

class TextFieldState extends CommonState<TextFieldWidget> {
  var text = '';

  TextEditingController _controller = TextEditingController();

  enableBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.yellow, style: BorderStyle.solid));
  }

  enableFocusBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.red, style: BorderStyle.solid));
  }

  @override
  Widget getBody() {
    return Container(
      child: ListView(
        children: <Widget>[
          Text(text),
          Text('focusedBorder:设置获取焦点时候的边框'),
          Text('enabledBorder:不可见也就是没有焦点时候的边框'),
          Container(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: TextField(
//              controller: _controller,
              onChanged: (data) {
                setState(() {
                  text = data;
                });
              },
              decoration: InputDecoration(
                hintText: '输入内容后，上面的Text内容同步改动',
                enabledBorder: enableBorder(),
                focusedBorder: enableFocusBorder(),
              ),
            ),
          ),
          Divider(
            height: 10,
            color: Colors.red,
          ),
          Text('controller:可以通过controller获取输入框中的文本'),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              enabledBorder: enableBorder(),
              focusedBorder: enableFocusBorder(),
            ),
          ),
          RaisedButton(
            child: Text('点击获取输入框文本'),
            onPressed: () {
              setState(() {
                text = _controller.text;
              });
            },
          ),
          Divider(
            height: 10,
            color: Colors.red,
          ),
          Text('可以通过设置decoration:InputDecoration设置如下样式'),
          Text('maxLength:设置最大长度,'),
          Text('maxLines:最大行数,'),
          Text('obscureText:设置是秘密,'),
          Text('textAlign:设置文本对齐方式,'),
          Text('onSubmitted:文本提交方式,'),
          Text('fillColor、filled:true   输入框填充颜色，必须两个属性都设置'),
          TextField(
            maxLength: 13,
            maxLines: 2,
            obscureText: false,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                focusedBorder: enableFocusBorder(),
                fillColor: Colors.green,
                filled: true,
                enabledBorder: enableBorder()),
            onSubmitted: (data) {
              setState(() {
                text = data;
              });
            },
          ),
          Divider(
            height: 10,
            color: Colors.red,
          ),
          Text('prefix输入框开头开头的可以设置输入框前方设置前缀，可以是文本也能是图标'),
          Text('suffix输入框末尾的可以设置输入框前方设置前缀，可以是文本也能是图标'),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.access_alarm,color: Colors.red,),
              suffixIcon: Icon(Icons.accessibility,color:Colors.red),
              enabledBorder: enableBorder(),
              focusedBorder: enableFocusBorder(),
            ),
          ),
          Divider(
            height: 10,
            color: Colors.red,
          ),
          Text('TextField:无法直接设置宽高，可以通过外部约束Container设置宽高'),
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 30),
            width: double.infinity,
            height: 40,
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: enableBorder(),
                focusedBorder: enableFocusBorder(),
                fillColor: Colors.pink,
                filled: true
              ),
            ),
          )
        ],
      ),
    );
  }
}
