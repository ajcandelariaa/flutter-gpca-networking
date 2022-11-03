import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/drawers/app/app_drawer.dart';

class RateThisAppScreen extends StatelessWidget {
  const RateThisAppScreen({Key? key}) : super(key: key);
  static const routeName = '/rate-this-app';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rate this app'),
      ),
      drawer: AppDrawer(),
      body: Container(),
    );
  }
}