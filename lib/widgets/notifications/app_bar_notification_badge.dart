import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/notification/notifications_screen.dart';

class AppBarNotificationBadge extends StatelessWidget {
  const AppBarNotificationBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed(NotificationsScreen.routeName),
      child: Container(
        margin: const EdgeInsets.only(right: 13),
        child: Badge(
          padding: const EdgeInsets.all(4),
          position: BadgePosition.topEnd(top: 9, end: -2),
          badgeContent: const Text(
            "5",
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          child: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}
