import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/event_drawer_provider.dart';
import 'package:gpca_networking/providers/exhibitor_provider.dart';
import 'package:gpca_networking/providers/media_partner_provider.dart';
import 'package:gpca_networking/providers/meeting_room_partner_provider.dart';
import 'package:gpca_networking/providers/program_session_provider.dart';
import 'package:gpca_networking/providers/speaker_provider.dart';
import 'package:gpca_networking/providers/sponsor_provider.dart';
import 'package:gpca_networking/screens/event/event_detail_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_exhibitors_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_media_partners_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_meeting_room_partners_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_sessions_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_speakers_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_sponsors_screen.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer.dart';
import 'package:gpca_networking/widgets/favorites/favorite_category_tile.dart';
import 'package:gpca_networking/widgets/notifications/app_bar_notification_badge.dart';
import 'package:provider/provider.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);
  static const routeName = '/favorites';

  _onBackButtonPress(ctx) {
    Provider.of<EventDrawerProvider>(ctx, listen: false).setActivePage(1);
    Navigator.of(ctx).pushReplacementNamed(EventDetailScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final sessions =
        Provider.of<ProgramSessionProvider>(context).favoriteSessions("1");
    final speakers =
        Provider.of<SpeakerProvider>(context).favoriteSpeakers("1");
    final sponsors =
        Provider.of<SponsorProvider>(context).favoriteSponsors("1");
    final exhibitors =
        Provider.of<ExhibitorProvider>(context).favoriteExhibitors("1");
    final meetingRoomPartners = Provider.of<MeetingRoomPartnerProvider>(context)
        .favoriteMeetingRoomPartners("1");
    final mediaPartners =
        Provider.of<MediaPartnerProvider>(context).favoriteMediaPartners("1");

    return WillPopScope(
      onWillPop: () => _onBackButtonPress(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
          centerTitle: true,
          actions: [
            AppBarNotificationBadge(),
          ],
        ),
        drawer: EventDrawer(),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FavoriteCategoryTile(
                  category: "Sessions",
                  icon: Icons.view_agenda,
                  routeName: FavoriteSessionsScreen.routeName,
                  numberOfFavorites: sessions.length,
                  favoriteLists: sessions,
                ),
                FavoriteCategoryTile(
                  category: "Speakers",
                  icon: Icons.mic,
                  routeName: FavoriteSpeakersScreen.routeName,
                  numberOfFavorites: speakers.length,
                  favoriteLists: speakers,
                ),
                FavoriteCategoryTile(
                  category: "Sponsors",
                  icon: Icons.people_alt,
                  routeName: FavoriteSponsorsScreen.routeName,
                  numberOfFavorites: sponsors.length,
                  favoriteLists: sponsors,
                ),
                FavoriteCategoryTile(
                  category: "Exhibitors",
                  icon: Icons.house_outlined,
                  routeName: FavoriteExhibitorsScreen.routeName,
                  numberOfFavorites: exhibitors.length,
                  favoriteLists: exhibitors,
                ),
                FavoriteCategoryTile(
                  category: "Meeting Room Partners",
                  icon: Icons.handshake,
                  routeName: FavoriteMeetingRoomPartnersScreen.routeName,
                  numberOfFavorites: meetingRoomPartners.length,
                  favoriteLists: meetingRoomPartners,
                ),
                FavoriteCategoryTile(
                  category: "Media Partners",
                  icon: Icons.people_alt_outlined,
                  routeName: FavoriteMediaPartnersScreen.routeName,
                  numberOfFavorites: mediaPartners.length,
                  favoriteLists: mediaPartners,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
