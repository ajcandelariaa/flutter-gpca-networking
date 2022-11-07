import 'package:flutter/material.dart';

class MediaPartnersScreen extends StatelessWidget {
  const MediaPartnersScreen({Key? key}) : super(key: key);
  static const routeName = '/media-partners';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Partners'),
        centerTitle: true,
      ),
    );
  }
}