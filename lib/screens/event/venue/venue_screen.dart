import 'package:flutter/material.dart';

class VenueScreen extends StatelessWidget {
  const VenueScreen({Key? key}) : super(key: key);
  static const routeName = '/venue';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Venue'),
        centerTitle: true,
      ),
    );
  }
}