import 'dart:async';
import 'counter_model.dart';

class CounterBloc {
  Counter _counter;

  StreamController<int> _counterController = StreamController<int>();
  Sink<int> get _inCounter => _counterController.sink;
  Stream<int> get outCounter => _counterController.stream;

  CounterBloc() {
    _counter = new Counter();
  }

  @override
  void dispose() {
    _counterController.close();
  }

  void increment() {
    _counter.increment();
    _inCounter.add(_counter.count);
  }

  void decrement() {
    _counter.decrement();
    _inCounter.add(_counter.count);
  }
}

CounterBloc bloc = new CounterBloc();