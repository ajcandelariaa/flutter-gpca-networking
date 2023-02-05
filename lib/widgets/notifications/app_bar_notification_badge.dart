import 'package:badges/badges.dart' as badges;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            badges.Badge(
              badgeStyle: badges.BadgeStyle(
                padding: const EdgeInsets.all(4),
              ),
              position: badges.BadgePosition.topEnd(top: -5, end: -3),
              badgeContent: const Text(
                "5",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              child: const Icon(Icons.notifications), 
            ),
          ],
        ),
      ),
    );
  }
}
