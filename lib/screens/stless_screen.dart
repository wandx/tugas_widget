import 'package:flutter/material.dart';

class StlessScreen extends StatelessWidget {
  const StlessScreen({Key? key, this.text = 'Im Stateless Widget'}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Example'),
      ),
      body: Center(child: Text(text)),
    );
  }
}
