import 'package:flutter/material.dart';

class CovidGuidelinesScreen extends StatelessWidget {
  const CovidGuidelinesScreen({Key? key}) : super(key: key);
  static const routeName = '/covid-guidelines';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid-19 safety guidelines'),
        centerTitle: true,
      ),
    );
  }
}