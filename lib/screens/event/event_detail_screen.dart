import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/about_screen.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer.dart';
import 'package:gpca_networking/widgets/event_detail_icons.dart';
import 'package:provider/provider.dart';

class EventDetailScreen extends StatelessWidget {
  static const routeName = '/event-detail';
  const EventDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        appBar: AppBar(
          title: Center(
            child: Image.asset(
              'assets/images/sc_inverted.png',
              width: 200,
            ),
          ),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 13),
              child: Icon(Icons.notifications),
            ),
          ],
        ),
        drawer: EventDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/sc_banner.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'About',
                            icon: Icons.info_outline,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Covid-19 safety guidelines',
                            icon: Icons.coronavirus_outlined,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Program',
                            icon: Icons.view_agenda,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Speakers',
                            icon: Icons.mic,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Sponsors',
                            icon: Icons.people_alt,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Exhibitors',
                            icon: Icons.house_outlined,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: "Meeting room \n partners",
                            icon: Icons.handshake,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Media partners',
                            icon: Icons.people_alt_outlined,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Attendees',
                            icon: Icons.chat,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: "My Meetings",
                            icon: Icons.calendar_month_outlined,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Venue',
                            icon: Icons.map_outlined,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Social feeds',
                            icon: Icons.featured_play_list_outlined,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                      ],
                    ),SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: "Press releases",
                            icon: Icons.newspaper,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Publications',
                            icon: Icons.library_books_outlined,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Notifications',
                            icon: Icons.notifications,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AboutScreen.routeName),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
