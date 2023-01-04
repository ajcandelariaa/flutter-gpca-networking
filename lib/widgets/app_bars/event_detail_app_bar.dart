import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/notifications/app_bar_notification_badge.dart';

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
        AppBarNotificationBadge(),
      ],
    );
  }
}
