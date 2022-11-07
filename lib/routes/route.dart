import 'package:gpca_networking/screens/about_gpca_networking_screen.dart';
import 'package:gpca_networking/screens/event/about_screen.dart';
import 'package:gpca_networking/screens/event/covid_guidelines_screen.dart';
import 'package:gpca_networking/screens/event/favorites_screen.dart';
import 'package:gpca_networking/screens/event/profile_screen.dart';
import 'package:gpca_networking/screens/event/program_screen.dart';
import 'package:gpca_networking/screens/events_list_screen.dart';
import 'package:gpca_networking/screens/login_screen.dart';
import 'package:gpca_networking/screens/rate_this_app_screen.dart';
import 'package:gpca_networking/screens/settings_screen.dart';
import 'package:gpca_networking/screens/terms_condition_screen.dart';
import 'package:gpca_networking/screens/event/event_detail_screen.dart';

getRoutes() {
  return {
    EventsListScreen.routeName: (context) => EventsListScreen(),
    LoginScreen.routeName: (context) => LoginScreen(),
    AboutGpcaNetworkingScreen.routeName: (context) => AboutGpcaNetworkingScreen(),
    RateThisAppScreen.routeName: (context) => RateThisAppScreen(),
    TermsConditionScreen.routeName: (context) => TermsConditionScreen(),
    SettingsScreen.routeName: (context) => SettingsScreen(),

    EventDetailScreen.routeName: (context) => EventDetailScreen(),
    ProfileScreen.routeName: (context) => ProfileScreen(),
    FavoritesScreen.routeName: (context) => FavoritesScreen(),

    AboutScreen.routeName: (context) => AboutScreen(),
    CovidGuidelinesScreen.routeName: (context) => CovidGuidelinesScreen(),
    ProgramScreen.routeName: (context) => ProgramScreen(),
  };
}
