import 'package:flutter/material.dart';

class PressReleasesScreen extends StatelessWidget {
  const PressReleasesScreen({Key? key}) : super(key: key);
  static const routeName = '/press-releases';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Press releases'),
        centerTitle: true,
      ),
    );
  }
}