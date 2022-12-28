import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/notification/notifications_screen.dart';
import 'package:badges/badges.dart';

class EventDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EventDetailAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Image.asset(
          'assets/images/sc_inverted.png',
          width: 200,
        ),
      ),
      centerTitle: true,
      actions: [
        InkWell(
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
        ),
      ],
    );
  }
}
