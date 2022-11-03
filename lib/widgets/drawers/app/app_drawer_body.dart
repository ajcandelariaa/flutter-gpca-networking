import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/app_drawer_provider.dart';
import 'package:gpca_networking/screens/about_gpca_networking_screen.dart';
import 'package:gpca_networking/screens/events_list_screen.dart';
import 'package:gpca_networking/screens/rate_this_app_screen.dart';
import 'package:gpca_networking/screens/settings_screen.dart';
import 'package:gpca_networking/screens/terms_condition_screen.dart';
import 'package:provider/provider.dart';

class AppDrawerBody extends StatelessWidget {
  const AppDrawerBody({Key? key}) : super(key: key);

  Widget buildListTile(
      String title, IconData icon, Function tapHandler, bool isActive) {
    return ListTile(
      selected: isActive,
      selectedTileColor: Colors.grey[300],
      leading: Icon(icon, color: Colors.blue[900]),
      title: Text(
        title,
        style: TextStyle(color: Colors.blue[900], fontSize: 18),
      ),
      horizontalTitleGap: 0,
      onTap: () => tapHandler(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildListTile(
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
        buildListTile(
          'About GPCA Networking',
          Icons.home,
          () {
            context.read<AppDrawerProvider>().activePage == 2
                ? null
                : Navigator.of(context).pushReplacementNamed(AboutGpcaNetworkingScreen.routeName);
            context.read<AppDrawerProvider>().setActivePage(2);
          },
          context.read<AppDrawerProvider>().activePage == 2,
        ),
        buildListTile(
          'Rate this app',
          Icons.home,
          () {
            context.read<AppDrawerProvider>().activePage == 3
                ? null
                : Navigator.of(context).pushReplacementNamed(RateThisAppScreen.routeName);
            context.read<AppDrawerProvider>().setActivePage(3);
          },
          context.read<AppDrawerProvider>().activePage == 3,
        ),
        buildListTile(
          'Terms & Condition',
          Icons.home,
          () {
            context.read<AppDrawerProvider>().activePage == 4
                ? null
                : Navigator.of(context).pushReplacementNamed(TermsConditionScreen.routeName);
            context.read<AppDrawerProvider>().setActivePage(4);
          },
          context.read<AppDrawerProvider>().activePage == 4,
        ),
        buildListTile(
          'Settings',
          Icons.home,
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
