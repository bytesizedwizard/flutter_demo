import 'dart:async';
import 'package:rxdart/rxdart.dart';

class CounterBloc {
  int _counter = 0;

  BehaviorSubject<int> counterController = BehaviorSubject();

  void incrementCounter() {
    _counter++;
    counterController.sink.add(_counter);
  }

  void resetCounter() {
    _counter = 0;
    counterController.sink.add(_counter);
  }
}