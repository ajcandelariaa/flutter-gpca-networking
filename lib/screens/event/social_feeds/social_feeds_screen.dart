import 'package:flutter/material.dart';

class SocialFeedsScreen extends StatelessWidget {
  const SocialFeedsScreen({Key? key}) : super(key: key);
  static const routeName = '/social-feeds';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social feeds'),
        centerTitle: true,
      ),
    );
  }
}