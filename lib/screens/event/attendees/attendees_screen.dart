import 'package:flutter/material.dart';

class AttendeesScreen extends StatelessWidget {
  const AttendeesScreen({Key? key}) : super(key: key);
  static const routeName = '/attendees';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendees'),
        centerTitle: true,
      ),
    );
  }
}