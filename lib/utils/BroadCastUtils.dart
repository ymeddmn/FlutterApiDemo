import 'dart:async';

class BroadCast {

  static final StreamController<String> controller = StreamController
      .broadcast();




  static void scribe(Function function) {
    controller.stream.listen(function);
  }

  static void update(String data) {
    controller.sink.add(data);
  }
}
