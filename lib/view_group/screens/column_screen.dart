import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ColumnScreen'),
      ),
      body: Container(
        color: Colors.blue.shade200,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
