import 'package:gpca_networking/screens/event_detail_screen.dart';
import 'package:gpca_networking/screens/events_list_screen.dart';
import 'package:gpca_networking/screens/login_screen.dart';

getRoutes() {
  return {
    EventsListScreen.routeName: (context) => EventsListScreen(),
    LoginScreen.routeName: (context) => LoginScreen(),
    EventDetailScreen.routeName: (context) => EventDetailScreen(),
  };
}
