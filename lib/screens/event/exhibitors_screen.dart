import 'package:flutter/material.dart';

class ExhibitorsScreen extends StatelessWidget {
  const ExhibitorsScreen({Key? key}) : super(key: key);
  static const routeName = '/exhibitors';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exhibitors'),
        centerTitle: true,
      ),
    );
  }
}