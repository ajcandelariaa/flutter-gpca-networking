import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/app_drawer_provider.dart';
import 'package:gpca_networking/providers/contact_provider.dart';
import 'package:gpca_networking/providers/event_detail_navigation_provider.dart';
import 'package:gpca_networking/providers/event_drawer_provider.dart';
import 'package:gpca_networking/providers/event_provider.dart';
import 'package:gpca_networking/providers/exhibitor_provider.dart';
import 'package:gpca_networking/providers/media_partner_provider.dart';
import 'package:gpca_networking/providers/meeting_room_partner_provider.dart';
import 'package:gpca_networking/providers/program_provider.dart';
import 'package:gpca_networking/providers/program_session_date_provider.dart';
import 'package:gpca_networking/providers/program_session_provider.dart';
import 'package:gpca_networking/providers/social_feeds_provider.dart';
import 'package:gpca_networking/providers/speaker_provider.dart';
import 'package:gpca_networking/providers/sponsor_provider.dart';
import 'package:gpca_networking/providers/theme_provider.dart';
import 'package:gpca_networking/providers/user_profile_provider.dart';
import 'package:gpca_networking/routes/route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('This is main_dart');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => EventDetailNavigationProvider()),
        ChangeNotifierProvider(create: (_) => EventProvider()),
        ChangeNotifierProvider(create: (_) => AppDrawerProvider()),
        ChangeNotifierProvider(create: (_) => EventDrawerProvider()),
        ChangeNotifierProvider(create: (_) => SocialFeedsProvider()),
        ChangeNotifierProvider(create: (_) => MediaPartnerProvider()),
        ChangeNotifierProvider(create: (_) => MeetingRoomPartnerProvider()),
        ChangeNotifierProvider(create: (_) => ExhibitorProvider()),
        ChangeNotifierProvider(create: (_) => SponsorProvider()),
        ChangeNotifierProvider(create: (_) => SpeakerProvider()),
        ChangeNotifierProvider(create: (_) => ProgramProvider()),
        ChangeNotifierProvider(create: (_) => ProgramSessionDateProvider()),
        ChangeNotifierProvider(create: (_) => ProgramSessionProvider()),
        ChangeNotifierProvider(create: (_) => ContactProvider()),
        ChangeNotifierProvider(create: (_) => UserProfileProvider()),
      ],  
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'GPCA Networking',
          theme: Provider.of<ThemeProvider>(context).lightData,
          darkTheme: Provider.of<ThemeProvider>(context).darkData,
          themeMode: Provider.of<ThemeProvider>(context).themeMode,
          initialRoute: '/',
          routes: getRoutes(), 
        );
      },
    );
  }
}