import 'package:flutter/material.dart';

class MyMeetingsScreen extends StatelessWidget {
  const MyMeetingsScreen({Key? key}) : super(key: key);
  static const routeName = '/my-meetings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Meetings'),
        centerTitle: true,
      ),
    );
  }
}