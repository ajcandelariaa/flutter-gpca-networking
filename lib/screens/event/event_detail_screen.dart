import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/about/about_screen.dart';
import 'package:gpca_networking/screens/event/attendees/attendees_screen.dart';
import 'package:gpca_networking/screens/event/covid/covid_guidelines_screen.dart';
import 'package:gpca_networking/screens/event/exhibitor/exhibitors_screen.dart';
import 'package:gpca_networking/screens/event/floor_plan/floor_plan_screen.dart';
import 'package:gpca_networking/screens/event/media_partner/media_partners_screen.dart';
import 'package:gpca_networking/screens/event/meeting_room_partner/meeting_room_partners_screen.dart';
import 'package:gpca_networking/screens/event/my-meetings/my_meetings_screen.dart';
import 'package:gpca_networking/screens/event/notification/notifications_screen.dart';
import 'package:gpca_networking/screens/event/press_releases/press_releases_screen.dart';
import 'package:gpca_networking/screens/event/program/program_screen.dart';
import 'package:gpca_networking/screens/event/publications/publications_screen.dart';
import 'package:gpca_networking/screens/event/social_feeds/social_feeds_screen.dart';
import 'package:gpca_networking/screens/event/speaker/speakers_screen.dart';
import 'package:gpca_networking/screens/event/sponsor/sponsors_screen.dart';
import 'package:gpca_networking/screens/event/venue/venue_screen.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer.dart';
import 'package:gpca_networking/widgets/event/event_detail_icons.dart';
import 'package:badges/badges.dart';

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
            InkWell(
              onTap: () => Navigator.of(context).pushNamed(NotificationsScreen.routeName),
              child: Container(
                margin: EdgeInsets.only(right: 13),
                child: Badge(
                  padding: EdgeInsets.all(4),
                  position: BadgePosition.topEnd(top: 9, end: -2),
                  badgeContent: Text(
                    "5",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10
                    ),
                  ),
                  child: Icon(Icons.notifications),
                ),
              ),
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
                                .pushNamed(CovidGuidelinesScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Program',
                            icon: Icons.view_agenda,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(ProgramScreen.routeName),
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
                                .pushNamed(SpeakersScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Sponsors',
                            icon: Icons.people_alt,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(SponsorsScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Exhibitors',
                            icon: Icons.house_outlined,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(ExhibitorsScreen.routeName),
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
                                .pushNamed(MeetingRoomPartnersScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Media partners',
                            icon: Icons.people_alt_outlined,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(MediaPartnersScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Attendees',
                            icon: Icons.chat,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(AttendeesScreen.routeName),
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
                                .pushNamed(MyMeetingsScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Venue',
                            icon: Icons.map_outlined,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(VenueScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Social feeds',
                            icon: Icons.featured_play_list_outlined,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(SocialFeedsScreen.routeName),
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
                            iconTitle: "Press releases",
                            icon: Icons.newspaper,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(PressReleasesScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Publications',
                            icon: Icons.library_books_outlined,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(PublicationsScreen.routeName),
                          ),
                        ),
                        Expanded(
                          child: EventDetailIcon(
                            iconTitle: 'Floor plan',
                            icon: Icons.developer_board,
                            tapHandler: () => Navigator.of(context)
                                .pushNamed(FloorPlanScreen.routeName),
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
