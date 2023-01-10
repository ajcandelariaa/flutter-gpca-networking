import 'package:gpca_networking/screens/event/announcements/announcements_screen.dart';
import 'package:gpca_networking/screens/event/contacts/contact_detail_screen.dart';
import 'package:gpca_networking/screens/event/contacts/contacts_screen.dart';
import 'package:gpca_networking/screens/event/exhibitor/exhibitor_detail_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_exhibitors_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_media_partners_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_meeting_room_partners_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_sessions_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_speakers_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_sponsors_screen.dart';
import 'package:gpca_networking/screens/event/feedback/feedback_screen.dart';
import 'package:gpca_networking/screens/event/media_partner/media_partner_detail_screen.dart';
import 'package:gpca_networking/screens/event/meeting_room_partner/meeting_room_partner_detail_screen.dart';
import 'package:gpca_networking/screens/event/program/session_detail_screen.dart';
import 'package:gpca_networking/screens/event/program/session_screen.dart';
import 'package:gpca_networking/screens/event/speaker/speaker_detail_screen.dart';
import 'package:gpca_networking/screens/event/speaker/speakers_category_all_screen.dart';
import 'package:gpca_networking/screens/event/speaker/speakers_category_dynamic_screen.dart';
import 'package:gpca_networking/screens/event/sponsor/sponsor_detail_screen.dart';
import 'package:gpca_networking/screens/event/sponsor/sponsors_type_all_screen.dart';
import 'package:gpca_networking/screens/event/sponsor/sponsors_type_associate_screen.dart';
import 'package:gpca_networking/screens/event/sponsor/sponsors_type_featured.dart';
import 'package:gpca_networking/screens/event/sponsor/sponsors_type_tier_screen.dart';
import 'package:gpca_networking/screens/main/about_gpca_networking_screen.dart';
import 'package:gpca_networking/screens/event/about/about_screen.dart';
import 'package:gpca_networking/screens/event/attendees/attendees_screen.dart';
import 'package:gpca_networking/screens/event/covid/covid_guidelines_screen.dart';
import 'package:gpca_networking/screens/event/exhibitor/exhibitors_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorites_screen.dart';
import 'package:gpca_networking/screens/event/floor_plan/floor_plan_screen.dart';
import 'package:gpca_networking/screens/event/media_partner/media_partners_screen.dart';
import 'package:gpca_networking/screens/event/meeting_room_partner/meeting_room_partners_screen.dart';
import 'package:gpca_networking/screens/event/my_meetings/my_meetings_screen.dart';
import 'package:gpca_networking/screens/event/notification/notifications_screen.dart';
import 'package:gpca_networking/screens/event/press_releases/press_releases_screen.dart';
import 'package:gpca_networking/screens/event/profile/profile_screen.dart';
import 'package:gpca_networking/screens/event/program/program_screen.dart';
import 'package:gpca_networking/screens/event/publications/publications_screen.dart';
import 'package:gpca_networking/screens/event/social_feeds/social_feeds_screen.dart';
import 'package:gpca_networking/screens/event/speaker/speakers_screen.dart';
import 'package:gpca_networking/screens/event/sponsor/sponsors_screen.dart';
import 'package:gpca_networking/screens/event/venue/venue_screen.dart';
import 'package:gpca_networking/screens/main/events_list_screen.dart';
import 'package:gpca_networking/screens/main/forgot_password_screen.dart';
import 'package:gpca_networking/screens/main/login_screen.dart';
import 'package:gpca_networking/screens/main/rate_this_app_screen.dart';
import 'package:gpca_networking/screens/main/settings_screen.dart';
import 'package:gpca_networking/screens/main/terms_condition_screen.dart';
import 'package:gpca_networking/screens/event/event_detail_screen.dart';

getRoutes() {
  return {
    EventsListScreen.routeName: (context) => EventsListScreen(),
    LoginScreen.routeName: (context) => LoginScreen(),
    ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
    AboutGpcaNetworkingScreen.routeName: (context) => AboutGpcaNetworkingScreen(),
    RateThisAppScreen.routeName: (context) => RateThisAppScreen(),
    TermsConditionScreen.routeName: (context) => TermsConditionScreen(),
    SettingsScreen.routeName: (context) => SettingsScreen(),

    EventDetailScreen.routeName: (context) => EventDetailScreen(),
    ProfileScreen.routeName: (context) => ProfileScreen(),
    ContactsScreen.routeName: (context) => ContactsScreen(),
    ContactDetailScreen.routeName: (context) => ContactDetailScreen(),
    FeedbackScreen.routeName: (context) => FeedbackScreen(),

    FavoritesScreen.routeName: (context) => FavoritesScreen(),
    FavoriteSessionsScreen.routeName: (context) => FavoriteSessionsScreen(),
    FavoriteSpeakersScreen.routeName: (context) => FavoriteSpeakersScreen(),
    FavoriteExhibitorsScreen.routeName: (context) => FavoriteExhibitorsScreen(),
    FavoriteSponsorsScreen.routeName: (context) => FavoriteSponsorsScreen(),
    FavoriteMeetingRoomPartnersScreen.routeName: (context) => FavoriteMeetingRoomPartnersScreen(),
    FavoriteMediaPartnersScreen.routeName: (context) => FavoriteMediaPartnersScreen(),

    NotificationsScreen.routeName: (context) => NotificationsScreen(),

    AnnouncementsScreen.routeName: (context) => AnnouncementsScreen(),
    AboutScreen.routeName: (context) => AboutScreen(),
    CovidGuidelinesScreen.routeName: (context) => CovidGuidelinesScreen(),

    ProgramScreen.routeName: (context) => ProgramScreen(),
    SessionsScreen.routeName: (context) => SessionsScreen(),
    SessionDetailScreen.routeName: (context) => SessionDetailScreen(),

    SpeakersScreen.routeName: (context) => SpeakersScreen(),
    SpeakersCategoryAllScreen.routeName: (context) => SpeakersCategoryAllScreen(),
    SpeakersCategoryDynamicScreen.routeName: (context) => SpeakersCategoryDynamicScreen(),
    SpeakerDetailScreen.routeName: (context) => SpeakerDetailScreen(),

    SponsorsScreen.routeName: (context) => SponsorsScreen(),
    SponsorsTypeAllScreen.routeName: (context) => SponsorsTypeAllScreen(),
    SponsorsTypeTierScreen.routeName: (context) => SponsorsTypeTierScreen(),
    SponsorsTypeAssociateScreen.routeName: (context) => SponsorsTypeAssociateScreen(),
    SponsorsTypeFeaturedScreen.routeName: (context) => SponsorsTypeFeaturedScreen(),
    SponsorDetailScreen.routeName: (context) => SponsorDetailScreen(),

    ExhibitorsScreen.routeName: (context) => ExhibitorsScreen(),
    ExhibitorDetailScreen.routeName: (context) => ExhibitorDetailScreen(),

    MeetingRoomPartnersScreen.routeName: (context) => MeetingRoomPartnersScreen(),
    MeetingRoomPartnerDetailScreen.routeName: (context) => MeetingRoomPartnerDetailScreen(),

    MediaPartnersScreen.routeName: (context) => MediaPartnersScreen(),
    MediaPartnerDetailScreen.routeName: (context) => MediaPartnerDetailScreen(),

    AttendeesScreen.routeName: (context) => AttendeesScreen(),
    MyMeetingsScreen.routeName: (context) => MyMeetingsScreen(),
    VenueScreen.routeName: (context) => VenueScreen(),
    SocialFeedsScreen.routeName: (context) => SocialFeedsScreen(),
    PressReleasesScreen.routeName: (context) => PressReleasesScreen(),
    PublicationsScreen.routeName: (context) => PublicationsScreen(),
    FloorPlanScreen.routeName: (context) => FloorPlanScreen(),
  };
}
