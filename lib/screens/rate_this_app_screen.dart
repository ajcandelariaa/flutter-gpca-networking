import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/events_list_screen.dart';
import 'package:gpca_networking/widgets/drawers/app/app_drawer.dart';

class RateThisAppScreen extends StatelessWidget {
  const RateThisAppScreen({Key? key}) : super(key: key);
  static const routeName = '/rate-this-app';

  _onBackButtonPress(ctx) {
    Navigator.of(ctx).pushReplacementNamed(EventsListScreen.routeName);
  }
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPress(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Rate this app'),
        ),
        drawer: AppDrawer(),
        body: Container(),
      ),
    );
  }
}