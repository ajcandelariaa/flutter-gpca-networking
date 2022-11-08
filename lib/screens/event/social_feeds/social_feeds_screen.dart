import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gpca_networking/providers/social_feeds_provider.dart';
import 'package:gpca_networking/screens/event/social_feeds/social_facebook_screen.dart';
import 'package:gpca_networking/screens/event/social_feeds/social_instagram_screen.dart';
import 'package:gpca_networking/screens/event/social_feeds/social_linkedin_screen.dart';
import 'package:gpca_networking/screens/event/social_feeds/social_twitter_screen.dart';
import 'package:gpca_networking/screens/event/social_feeds/social_youtube_screen.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SocialFeedsScreen extends StatelessWidget {
  const SocialFeedsScreen({Key? key}) : super(key: key);
  static const routeName = '/social-feeds';
  final screens = const [
    SocialFacebookScreen(),
    SocialInstagramScreen(),
    SocialYoutubeScreen(),
    SocialLinkedinScreen(),
    SocialTwitterScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    print('thsi is sf screen');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Feeds'),
        centerTitle: true,
      ),
      body: screens[context.watch<SocialFeedsProvider>().currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: context.watch<SocialFeedsProvider>().currentIndex,
        selectedItemColor: context.watch<SocialFeedsProvider>().currentColor,
        onTap: (value) {
          context.read<SocialFeedsProvider>().setCurrentIndex(value);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.facebook), label: "Facebook"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.instagram), label: "Instagram"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.youtube), label: "YouTube"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.linkedin), label: "Linkedin"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.twitter), label: "Twitter"),
        ],
      ),
    );
  }
}
