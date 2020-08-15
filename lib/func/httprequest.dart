import 'package:flutter/material.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'dart:io';
import 'dart:convert';

import 'package:flutterdemo/utils/WidgetUtils.dart';

class HttpFunc extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return HttpState();
  }
}

class HttpState extends CommonState<HttpFunc> {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            WidgetUtils.getDivider(),
            Text('使用HttpClient实现get请求'),
            Text('Uri初始化的方式'),
            Text('''// 方法1
Uri uri = Uri(scheme: 'https', host: 'xxx.xxx.xxx.xxx', path: homeNoviceListUrl);
// 方法2
Uri uri = Uri.https('xxx.xxx.xxx.xxx', homeNoviceListUrl);
// uri方法3
Uri uri = Uri.parse(njqbaseUrl + homeNoviceListUrl);'''),
            Text('开始请求的方法：'),
            Text('var request = await httpClient.getUrl(uri);'),
            Text('可以通过request给请求添加header'),
            Text(''),
            Text(''),
            RaisedButton(
              child: Text('get请求'),
              onPressed: () {
                httpGet();
              },
            ),
            WidgetUtils.getDivider(),
            Text(
              '使用HttpClient进行post请求的方法',
              style: TextStyle(color: Colors.green),
            ),
            Text('post中添加请求实体的方式'),
            Text('request.add(utf8.encode(json.encode(jsonMap)));'),
            RaisedButton(
              child: Text('post请求'),
              onPressed: () {
                postMethod();
              },
            ),
          ],
        )
      ],
    );
  }

  /**
   * get方法
   */
  Future httpGet() async {
    HttpClient httpClient = HttpClient();
    Uri url = Uri.parse('https://www.jianshu.com/p/6baa1810cc16');
    var request = await httpClient.getUrl(url);
    var response = await request.close();
    var responseBody = await response.transform(Utf8Decoder()).join();

    if (response.statusCode == HttpStatus.ok) {
      print('请求头：${response.headers}');

      print('111请求成功代发数据为:\n $responseBody');
    } else {
      print('\n\n\n11111==请求失败${response.statusCode}');
    }
  }

  /**
   * post方法
   */
  Future postMethod() async {
    HttpClient httpClient = new HttpClient();
    HttpClientRequest request = await httpClient.postUrl(Uri.parse(
        'https://stackoverflow.com/questions/50278258/http-post-with-json-on-body-flutter-dart/50295533'));
// 设置请求头
    request.headers.set("loginSource", "IOS");
    request.headers.set("useVersion", "3.1.0");
    request.headers.set("isEncoded", "1");
    request.headers.set("bundleId", "com.nongfadai.iospro");
    request.headers.set('content-type', 'application/json');

    /// 添加请求体
    /// https://stackoverflow.com/questions/50278258/http-post-with-json-on-body-flutter-dart/50295533
    Map jsonMap = {'currentPage': '1'};
    request.add(utf8.encode(json.encode(jsonMap)));

    HttpClientResponse response = await request.close();
    String responseBody = await response.transform(utf8.decoder).join();
    if (response.statusCode == HttpStatus.ok) {
      print('请求成功');
      print(response.headers);
      print(responseBody);
    }
  }
}
