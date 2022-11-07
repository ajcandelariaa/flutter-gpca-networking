import 'package:flutter/material.dart';

class SponsorsScreen extends StatelessWidget {
  const SponsorsScreen({Key? key}) : super(key: key);
  static const routeName = '/sponsors';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sponsors'),
        centerTitle: true,
      ),
    );
  }
}