import 'dart:async';

class CounterBloc {
  int _counter = 0;

  StreamController<int> counterController = StreamController();

  void incrementCounter() {
    _counter++;
    counterController.sink.add(_counter);
  }

  void resetCounter() {
    _counter = 0;
    counterController.sink.add(_counter);
  }
}