import 'package:flutter/material.dart';

class FloorPlanScreen extends StatelessWidget {
  const FloorPlanScreen({Key? key}) : super(key: key);
  static const routeName = '/floor-plan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floor plan'),
        centerTitle: true,
      ),
    );
  }
}