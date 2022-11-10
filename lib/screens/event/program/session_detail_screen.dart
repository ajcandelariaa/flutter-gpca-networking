import 'package:flutter/material.dart';

class SessionDetailScreen extends StatelessWidget {
  const SessionDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/session-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Session details'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Text('sample'),
      ),
    );
  }
}
