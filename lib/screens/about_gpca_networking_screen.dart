import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/drawers/app/app_drawer.dart';

class AboutGpcaNetworkingScreen extends StatelessWidget {
  const AboutGpcaNetworkingScreen({Key? key}) : super(key: key);
  static const routeName = '/about-gpca-networking';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About GPCA Networking'),
      ),
      drawer: AppDrawer(),
      body: Container(),
    );
  }
}
