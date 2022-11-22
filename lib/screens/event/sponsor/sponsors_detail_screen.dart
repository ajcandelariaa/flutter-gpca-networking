import 'package:flutter/material.dart';

class SponsorDetailScreen extends StatelessWidget {
  const SponsorDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/sponsors-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sponsor detail'),
        centerTitle: true,
      ),
    );
  }
}