import 'package:flutter/material.dart';
import 'package:widget_tutorial/screens/inherited_state.dart';
import 'package:widget_tutorial/widgets/menu_widget.dart';
import 'package:widget_tutorial/widgets/notification_widget.dart';
import 'package:widget_tutorial/widgets/user_info.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _parent = InheritedWidgetExample.of(context);
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder<Color>(
          valueListenable: _parent.color,
          builder: (context,value,child) {
            return Container(
              color: value,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        MenuWidget(),
                        Spacer(),
                        NotificationWidget(),
                        UserInfo(),
                      ],
                    ),
                    Image.asset(
                      'assets/img.png',
                      fit: BoxFit.cover,
                    ),
                    Text(_parent.color.value.toString()),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _parent.changeBlue();
                          },
                          child: Text('Change Blue'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            _parent.changeRed();
                          },
                          child: Text('Change Red'),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
