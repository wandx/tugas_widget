import 'package:flutter/material.dart';
import 'package:widget_tutorial/counter/screens/counter_state.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CounterState(child: const CounterView());
  }
}

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Counter'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IconButton(
            onPressed: () {
              CounterState.of(context).decrement();
            },
            icon: const Icon(Icons.remove),
          ),
          Container(
            alignment: Alignment.center,
            child: ValueListenableBuilder(
              valueListenable: CounterState.of(context).count,
              builder: (context, value, child) {
                return Text(
                  value.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
          ),
          IconButton(
            onPressed: () {
              CounterState.of(context).increment();
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
