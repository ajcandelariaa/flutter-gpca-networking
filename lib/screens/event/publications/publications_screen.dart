import 'package:flutter/material.dart';

class PublicationsScreen extends StatelessWidget {
  const PublicationsScreen({Key? key}) : super(key: key);
  static const routeName = '/publications';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Publications'),
        centerTitle: true,
      ),
    );
  }
}