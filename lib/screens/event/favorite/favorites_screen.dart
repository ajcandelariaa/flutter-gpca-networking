import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/event_drawer_provider.dart';
import 'package:gpca_networking/screens/event/event_detail_screen.dart';
import 'package:gpca_networking/screens/event/favorite/favorite_speakers_screen.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer.dart';
import 'package:gpca_networking/widgets/favorites/favorite_category_tile.dart';
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
    return WillPopScope(
      onWillPop: () => _onBackButtonPress(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
          centerTitle: true,
        ),
        drawer: EventDrawer(),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FavoriteCategoryTile(
                  category: "Speakers",
                  icon: Icons.mic,
                  routeName: FavoriteSpeakersScreen.routeName,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
