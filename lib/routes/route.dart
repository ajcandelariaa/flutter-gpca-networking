import 'package:gpca_networking/screens/about_gpca_networking_screen.dart';
import 'package:gpca_networking/screens/event_detail_screen.dart';
import 'package:gpca_networking/screens/events_list_screen.dart';
import 'package:gpca_networking/screens/login_screen.dart';
import 'package:gpca_networking/screens/rate_this_app_screen.dart';
import 'package:gpca_networking/screens/settings_screen.dart';
import 'package:gpca_networking/screens/terms_condition_screen.dart';

getRoutes() {
  return {
    EventsListScreen.routeName: (context) => EventsListScreen(),
    LoginScreen.routeName: (context) => LoginScreen(),
    EventDetailScreen.routeName: (context) => EventDetailScreen(),
    AboutGpcaNetworkingScreen.routeName: (context) => AboutGpcaNetworkingScreen(),
    RateThisAppScreen.routeName: (context) => RateThisAppScreen(),
    TermsConditionScreen.routeName: (context) => TermsConditionScreen(),
    SettingsScreen.routeName: (context) => SettingsScreen(),
  };
}
