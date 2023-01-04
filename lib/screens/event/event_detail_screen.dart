import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/event_detail_navigation_provider.dart';
import 'package:gpca_networking/screens/event/notification/notifications_screen.dart';
import 'package:gpca_networking/widgets/app_bars/event_detail_app_bar.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer.dart';
import 'package:gpca_networking/widgets/events/event_detail_header.dart';
import 'package:gpca_networking/widgets/events/event_detail_icon.dart';
import 'package:badges/badges.dart';
import 'package:provider/provider.dart';

class EventDetailScreen extends StatelessWidget {
  static const routeName = '/event-detail';
  const EventDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigations =
        Provider.of<EventDetailNavigationProvider>(context).navigations;
    print('This is event_detail_screen');
    Future<bool> showExitPopup() async {
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Exit App'),
              content: const Text('Are you sure you want to exit the app?'),
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

    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        appBar: const EventDetailAppBar(),
        drawer: const EventDrawer(),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  EventDetailHeader(imageUrl: 'assets/images/sc_banner.jpg'),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 0,
                mainAxisExtent: 120,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return EventDetailIcon(
                    iconTitle: navigations[index].iconTitle,
                    icon: navigations[index].icon,
                    tapHandler: () => Navigator.of(context)
                        .pushNamed(navigations[index].routeName),
                  );
                },
                childCount: navigations.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
