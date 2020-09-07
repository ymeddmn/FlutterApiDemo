import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdemo/common/commonwidget.dart';
import 'package:flutterdemo/utils/WidgetUtils.dart';

class BlocProviderWidget extends CommonWidget {
  @override
  State<StatefulWidget> createState() {
    return BlocProviderState();
  }
}

class BlocProviderState extends CommonState<BlocProviderWidget> {
  @override
  Widget getBody() {
    var customBloc = CustomBloc();
    return BlocProvider(
      create: (context) => customBloc,
      child: Container(
        child: BlocBuilder<CustomBloc, int>(builder: (context, count) {
          return Column(
            children: [
              Text('需要导入依赖，flutter_bloc: ^3.2.0'),
              WidgetUtils.getDivider(),
              Text('$count'),
              RaisedButton(
                child: Text('增加'),
                onPressed: () {
                  customBloc.add(CustomEvent.add); //点击增加的时候把增加的事件添加到队列
                },
              ),
              RaisedButton(
                child: Text('减少'),
                onPressed: () {
                  customBloc.add(CustomEvent.reduce); //点击减少的时候把减少的事件添加到队列
                },
              ),
            ],
          );
        }),
      ),
    );
  }
}

enum CustomEvent {
  add,
  reduce,
}

class CustomBloc extends Bloc<CustomEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CustomEvent event) async* {
    switch (event) {
      case CustomEvent.reduce:
        yield (state - 1); //减一的时候，在这里返回减一逻辑
        break;
      case CustomEvent.add: //加一的时候再这里返回加一逻辑
        yield state + 1;
        break;
    }
  }
}
