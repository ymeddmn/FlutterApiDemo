import 'package:flutter/material.dart';
import 'package:flutterdemo/bean/beans.dart';
import 'package:flutterdemo/common/searchresult.dart';
import 'package:flutterdemo/utils/constants.dart';

class ListWidget extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  void search(BuildContext context) {
    var text = _controller.text;
    print('输入框文本：$text');
    List<PageBean> beans = [];
    Constants.routes.forEach((it) {
      if (it.searchText.toLowerCase().contains(text.toLowerCase()) ||
          it.funcName.toLowerCase().contains(text.toLowerCase()) ||
          it.fileName.toLowerCase().contains(text.toLowerCase())) {
        beans.add(it);
      }
    });
    Constants.routesFunc.forEach((it) {
      if (it.searchText.toLowerCase().contains(text.toLowerCase()) ||
          it.funcName.toLowerCase().contains(text.toLowerCase()) ||
          it.fileName.toLowerCase().contains(text.toLowerCase())) {
        beans.add(it);
      }
    });
    if (beans.length > 0) {
      Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => SearchResultWidget(beans)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: ClipOval(
            child: Image.asset('img/head.jpeg'),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 8, 20, 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        controller: _controller,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          hintText: '请输入关键字',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.green)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.green)),
                        ),
                        onEditingComplete: () {
                          search(context);
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          search(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListItem(Constants.currRoutes[index]);
                },
                itemCount: Constants.currRoutes.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  PageBean pageBean;

  ListItem(this.pageBean);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => pageBean.route),
        );
      },
      child: Container(
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              pageBean.funcName,
              maxLines: 3,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              pageBean.fileName,
              maxLines: 3,
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              pageBean.searchText,
              maxLines: 3,
              style: TextStyle(fontSize: 15, color: Colors.green),
            ),
            Divider(
              indent: 30,
              height: 2,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
