import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/events_list_screen.dart';
import 'package:gpca_networking/widgets/drawers/app/app_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static const routeName = '/settings';

  _onBackButtonPress(ctx) {
    Navigator.of(ctx).pushReplacementNamed(EventsListScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPress(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        drawer: AppDrawer(),
        body: Container(),
      ),
    );
  }
}