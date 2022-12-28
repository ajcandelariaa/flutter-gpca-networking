import 'package:flutter/material.dart';
import 'package:gpca_networking/models/event_detail_navigation_model.dart';
import 'package:gpca_networking/screens/event/about/about_screen.dart';
import 'package:gpca_networking/screens/event/attendees/attendees_screen.dart';
import 'package:gpca_networking/screens/event/covid/covid_guidelines_screen.dart';
import 'package:gpca_networking/screens/event/exhibitor/exhibitors_screen.dart';
import 'package:gpca_networking/screens/event/floor_plan/floor_plan_screen.dart';
import 'package:gpca_networking/screens/event/media_partner/media_partners_screen.dart';
import 'package:gpca_networking/screens/event/meeting_room_partner/meeting_room_partners_screen.dart';
import 'package:gpca_networking/screens/event/my_meetings/my_meetings_screen.dart';
import 'package:gpca_networking/screens/event/press_releases/press_releases_screen.dart';
import 'package:gpca_networking/screens/event/program/program_screen.dart';
import 'package:gpca_networking/screens/event/publications/publications_screen.dart';
import 'package:gpca_networking/screens/event/social_feeds/social_feeds_screen.dart';
import 'package:gpca_networking/screens/event/speaker/speakers_screen.dart';
import 'package:gpca_networking/screens/event/sponsor/sponsors_screen.dart';
import 'package:gpca_networking/screens/event/venue/venue_screen.dart';

class EventDetailNavigationProvider with ChangeNotifier {
  final List<EventDetailNavigationModel> _navigations = [
    EventDetailNavigationModel(
      id: "1",
      icon: Icons.info_outline,
      iconTitle: 'About',
      routeName: AboutScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "2",
      icon: Icons.coronavirus_outlined,
      iconTitle: 'Covid-19 safety guidelines',
      routeName: CovidGuidelinesScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "3",
      icon: Icons.view_agenda,
      iconTitle: 'Program',
      routeName: ProgramScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "4",
      icon: Icons.mic,
      iconTitle: 'Speakers',
      routeName: SpeakersScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "5",
      icon: Icons.people_alt,
      iconTitle: 'Sponsors',
      routeName: SponsorsScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "6",
      icon: Icons.house_outlined,
      iconTitle: 'Exhibitors',
      routeName: ExhibitorsScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "7",
      icon: Icons.handshake,
      iconTitle: 'Meeting room \n partners',
      routeName: MeetingRoomPartnersScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "8",
      icon: Icons.people_alt_outlined,
      iconTitle: 'Media partners',
      routeName: MediaPartnersScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "9",
      icon: Icons.chat,
      iconTitle: 'Attendees',
      routeName: AttendeesScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "10",
      icon: Icons.calendar_month_outlined,
      iconTitle: 'My Meetings',
      routeName: MyMeetingsScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "11",
      icon: Icons.map_outlined,
      iconTitle: 'Venue',
      routeName: VenueScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "12",
      icon: Icons.developer_board,
      iconTitle: 'Floor plan',
      routeName: FloorPlanScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "13",
      icon: Icons.newspaper,
      iconTitle: 'Press releases',
      routeName: PressReleasesScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "14",
      icon: Icons.library_books_outlined,
      iconTitle: 'Publications',
      routeName: PublicationsScreen.routeName,
    ),
    EventDetailNavigationModel(
      id: "15",
      icon: Icons.featured_play_list_outlined,
      iconTitle: 'Social feeds',
      routeName: SocialFeedsScreen.routeName,
    ),
  ];

  List<EventDetailNavigationModel> get navigations {
    return [..._navigations];
  }
}