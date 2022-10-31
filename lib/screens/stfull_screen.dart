import 'package:flutter/material.dart';

class StfullScreen extends StatefulWidget {
  const StfullScreen({Key? key}) : super(key: key);

  @override
  State<StfullScreen> createState() => _StfullScreenState();
}

class _StfullScreenState extends State<StfullScreen> {
  String? text;
  late String text2;

  @override
  void initState() {
    text = 'Im Statefull Widget';
    text2 = 'Im Statefull Widget 2';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statefull Example'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => text = 'Text udah di ganti');
        },
        child: Icon(Icons.account_box),
      ),
      body: Column(
        children: [
          Text(text!),
          Text(text2),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }
}
