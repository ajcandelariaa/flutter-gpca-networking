import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/app_drawer_provider.dart';
import 'package:gpca_networking/screens/main/about_gpca_networking_screen.dart';
import 'package:gpca_networking/screens/main/events_list_screen.dart';
import 'package:gpca_networking/screens/main/rate_this_app_screen.dart';
import 'package:gpca_networking/screens/main/settings_screen.dart';
import 'package:gpca_networking/screens/main/terms_condition_screen.dart';
import 'package:gpca_networking/widgets/drawers/app/app_drawer_body_tile.dart';
import 'package:provider/provider.dart';

class AppDrawerBody extends StatelessWidget {
  const AppDrawerBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppDrawerBodyTile(
          'Home',
          Icons.home,
          () {
            context.read<AppDrawerProvider>().activePage == 1
                ? null
                : Navigator.of(context)
                    .pushReplacementNamed(EventsListScreen.routeName);
            context.read<AppDrawerProvider>().setActivePage(1);
          },
          context.read<AppDrawerProvider>().activePage == 1,
        ),
        AppDrawerBodyTile(
          'About GPCA Networking',
          Icons.info,
          () {
            context.read<AppDrawerProvider>().activePage == 2
                ? null
                : Navigator.of(context).pushReplacementNamed(AboutGpcaNetworkingScreen.routeName);
            context.read<AppDrawerProvider>().setActivePage(2);
          },
          context.read<AppDrawerProvider>().activePage == 2,
        ),
        AppDrawerBodyTile(
          'Rate this app',
          Icons.rate_review_sharp,
          () {
            context.read<AppDrawerProvider>().activePage == 3
                ? null
                : Navigator.of(context).pushReplacementNamed(RateThisAppScreen.routeName);
            context.read<AppDrawerProvider>().setActivePage(3);
          },
          context.read<AppDrawerProvider>().activePage == 3,
        ),
        AppDrawerBodyTile(
          'Terms & Condition',
          Icons.rule,
          () {
            context.read<AppDrawerProvider>().activePage == 4
                ? null
                : Navigator.of(context).pushReplacementNamed(TermsConditionScreen.routeName);
            context.read<AppDrawerProvider>().setActivePage(4);
          },
          context.read<AppDrawerProvider>().activePage == 4,
        ),
        AppDrawerBodyTile(
          'Settings',
          Icons.settings,
          () {
            context.read<AppDrawerProvider>().activePage == 5
                ? null
                : Navigator.of(context).pushReplacementNamed(SettingsScreen.routeName);
            context.read<AppDrawerProvider>().setActivePage(5);
          },
          context.read<AppDrawerProvider>().activePage == 5,
        ),
      ],
    );
  }
}
