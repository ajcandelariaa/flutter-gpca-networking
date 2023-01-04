import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/event_drawer_provider.dart';
import 'package:gpca_networking/screens/event/event_detail_screen.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer.dart';
import 'package:gpca_networking/widgets/notifications/app_bar_notification_badge.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const routeName = "/profile";

  _onBackButtonPress(ctx) {
    Provider.of<EventDrawerProvider>(ctx, listen: false).setActivePage(1);
    Navigator.of(ctx).pushReplacementNamed(EventDetailScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPress(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          actions: [
            AppBarNotificationBadge(),
          ],
        ),
        drawer: EventDrawer(),
      ),
    );
  }
}
