import 'package:flutter/material.dart';

class BottomBarFunc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomBarState();
  }
}

class BottomBarState extends State<BottomBarFunc>
    with SingleTickerProviderStateMixin {
  int index = 0;

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: getCurrentPage(index),
        bottomNavigationBar: getBottom(this),
      ),
    );
  }

  getCurrentPage(index) {
    return Center(
      child: Text(
        index.toString(),
        style: TextStyle(color: getColor(index)),
      ),
    );
  }

  getBottom(BottomBarState bottomBarState) {
    return Material(
      color: Colors.white,
      child: TabBar(
        tabs: [
          Tab(
            child: Text(
              '首页',
              style: TextStyle(color: Colors.black),
            ),
            icon: Icon(
              Icons.home,
              color: Color(0xff05a3fa),
            ),
          ),
          Tab(
            child: Text('待办', style: TextStyle(color: Colors.black)),
            icon: Icon(Icons.today, color: Color(0xff05a3fa)),
          ),
          Tab(
            child: Text('我的', style: TextStyle(color: Colors.black)),
            icon: Icon(Icons.person, color: Color(0xff05a3fa)),
          ),
        ],
        controller: controller,
        indicatorWeight: 0.1,
        isScrollable: false,
        onTap: (index) {
          select(index);
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  getColor(index) {
    switch(index){
      case 0:
        return Colors.green;
      case 1:
        return Colors.pink;
      case 2:
        return Colors.red;
      default:
        return Colors.white;
    }
  }

  void select(int index) {
    setState(() {
      this.index=index;
    });
  }
}
