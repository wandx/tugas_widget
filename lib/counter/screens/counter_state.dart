import 'package:flutter/material.dart';

class CounterState extends InheritedWidget {
  CounterState({super.key, required super.child});

  final count = ValueNotifier<int>(0);

  void increment() {
    count.value++;
  }

  void decrement() {
    count.value--;
  }

  static CounterState of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<CounterState>();
    assert(result != null, 'No counter state in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
