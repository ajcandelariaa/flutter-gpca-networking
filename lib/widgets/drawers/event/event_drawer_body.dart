import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/event_drawer_provider.dart';
import 'package:gpca_networking/providers/theme_provider.dart';
import 'package:gpca_networking/screens/event/contacts/contacts_screen.dart';
import 'package:gpca_networking/screens/event/event_detail_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorites_screen.dart';
import 'package:gpca_networking/screens/event/feedback/feedback_screen.dart';
import 'package:gpca_networking/screens/event/profile/profile_screen.dart';
import 'package:gpca_networking/screens/main/events_list_screen.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer_body_tile.dart';
import 'package:provider/provider.dart';

class EventDrawerBody extends StatelessWidget {
  const EventDrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopupEvents() async {
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Events List'),
              content: const Text(
                  'Are you sure you want to go back to the events list?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Yes'),
                ),
              ],
            ),
          ) ??
          false;
    }

    Future<bool> showExitPopupLogout() async {
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Logout'),
              content: const Text('Are you sure you want to logout?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Yes'),
                ),
              ],
            ),
          ) ??
          false;
    }

    return Column(
      children: [
        EventDrawerBodyTile(
          'Home',
          Icons.home,
          () {
            context.read<EventDrawerProvider>().activePage == 1
                ? null
                : Navigator.of(context)
                    .pushReplacementNamed(EventDetailScreen.routeName);
            context.read<EventDrawerProvider>().setActivePage(1);
          },
          context.read<EventDrawerProvider>().activePage == 1,
        ),
        EventDrawerBodyTile(
          'Profile',
          Icons.person,
          () {
            context.read<EventDrawerProvider>().activePage == 2
                ? null
                : Navigator.of(context)
                    .pushReplacementNamed(ProfileScreen.routeName);
            context.read<EventDrawerProvider>().setActivePage(2);
          },
          context.read<EventDrawerProvider>().activePage == 2,
        ),
        EventDrawerBodyTile(
          'Contacts',
          Icons.perm_contact_calendar_outlined,
          () {
            context.read<EventDrawerProvider>().activePage == 3
                ? null
                : Navigator.of(context)
                    .pushReplacementNamed(ContactsScreen.routeName);
            context.read<EventDrawerProvider>().setActivePage(3);
          },
          context.read<EventDrawerProvider>().activePage == 3,
        ),
        EventDrawerBodyTile(
          'Favorites',
          Icons.favorite,
          () {
            context.read<EventDrawerProvider>().activePage == 4
                ? null
                : Navigator.of(context)
                    .pushReplacementNamed(FavoritesScreen.routeName);
            context.read<EventDrawerProvider>().setActivePage(4);
          },
          context.read<EventDrawerProvider>().activePage == 4,
        ),
        EventDrawerBodyTile(
          'Feedback',
          Icons.feedback_outlined,
          () {
            context.read<EventDrawerProvider>().activePage == 5
                ? null
                : Navigator.of(context)
                    .pushReplacementNamed(FeedbackScreen.routeName);
            context.read<EventDrawerProvider>().setActivePage(5);
          },
          context.read<EventDrawerProvider>().activePage == 5,
        ),
        EventDrawerBodyTile(
          'Events List',
          Icons.list_alt,
          () async {
            if (await showExitPopupEvents()) {
              Navigator.of(context)
                  .pushReplacementNamed(EventsListScreen.routeName);
              context.read<EventDrawerProvider>().setActivePage(1);
              context.read<ThemeProvider>().toggleThemeData('main');
            }
          },
          context.read<EventDrawerProvider>().activePage == 6,
        ),
        EventDrawerBodyTile(
          'Logout',
          Icons.logout,
          () async {
            if (await showExitPopupLogout()) {
              final snackBar = SnackBar(
                duration: const Duration(seconds: 3),
                action: SnackBarAction(
                  label: "Dismiss",
                  onPressed: () {},
                ),
                content: const Text(
                  'Logged out succesfully!',
                ),
              );
    
              ScaffoldMessenger.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(snackBar);
                
              Navigator.of(context)
                  .pushReplacementNamed(EventsListScreen.routeName);
              context.read<EventDrawerProvider>().setActivePage(1);
              context.read<ThemeProvider>().toggleThemeData('main');
            }
          },
          context.read<EventDrawerProvider>().activePage == 7,
        ),
      ],
    );
  }
}
