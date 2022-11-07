import 'package:flutter/material.dart';

class SpeakersScreen extends StatelessWidget {
  const SpeakersScreen({Key? key}) : super(key: key);
  static const routeName = '/speakers';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speakers'),
        centerTitle: true,
      ),
    );
  }
}