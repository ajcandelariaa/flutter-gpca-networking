import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/drawers/app/app_drawer.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({Key? key}) : super(key: key);
  static const routeName = '/terms-condition';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Condition'),
      ),
      drawer: AppDrawer(),
      body: Container(),
    );
  }
}