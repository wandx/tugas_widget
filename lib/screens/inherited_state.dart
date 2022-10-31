import 'package:flutter/material.dart';

class InheritedWidgetExample extends InheritedWidget {
  InheritedWidgetExample({
    super.key,
    required super.child,
  });

  ValueNotifier<Color> color = ValueNotifier<Color>(Colors.green);

  static InheritedWidgetExample of(BuildContext context) {
    final InheritedWidgetExample? result = context.dependOnInheritedWidgetOfExactType<InheritedWidgetExample>();
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  void addSomething(){
    print('something');
  }

  void changeBlue(){
    color.value = Colors.blue;
    print('blue');
  }

  void changeRed(){
    color.value = Colors.red;
    print('red');
  }

  @override
  bool updateShouldNotify(InheritedWidgetExample old) => true;
}