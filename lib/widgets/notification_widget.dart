import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  late int _counter;

  @override
  void initState() {
    _counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('on tap trigerred');
        _counter++;
        print(_counter);
        setState(() {});
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Badge(
          showBadge: _counter > 0,
          badgeContent: Text(
            _counter.toString(),
            style: TextStyle(color: Colors.white),
          ),
          child: Icon(Icons.notifications),
        ),
      ),
    );
  }
}
