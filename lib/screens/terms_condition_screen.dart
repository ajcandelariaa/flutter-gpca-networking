import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/app_drawer_provider.dart';
import 'package:gpca_networking/screens/events_list_screen.dart';
import 'package:gpca_networking/widgets/drawers/app/app_drawer.dart';
import 'package:provider/provider.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({Key? key}) : super(key: key);
  static const routeName = '/terms-condition';

  _onBackButtonPress(ctx) {
    Provider.of<AppDrawerProvider>(ctx, listen: false).setActivePage(1);
    Navigator.of(ctx).pushReplacementNamed(EventsListScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPress(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Terms and Condition'),
        ),
        drawer: AppDrawer(),
        body: Container(),
      ),
    );
  }
}