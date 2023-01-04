import 'package:flutter/material.dart';
import 'package:gpca_networking/models/sponsor_model.dart';
import 'package:gpca_networking/widgets/favorites/favorite_sponsor_tile.dart';

class FavoriteSponsorsScreen extends StatelessWidget {
  const FavoriteSponsorsScreen({Key? key}) : super(key: key);

  static const routeName = "/favorite-sponsors-screen";

  @override
  Widget build(BuildContext context) {
    final sponsors =
        ModalRoute.of(context)!.settings.arguments as List<SponsorModel>;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Sponsors"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView.builder(
          itemCount: sponsors.length,
          itemBuilder: (context, index) {
            return FavoriteSponsorTile(
              id: sponsors[index].id,
              eventId: sponsors[index].eventId,
              type: sponsors[index].sponsorType,
              name: sponsors[index].name,
              category: sponsors[index].sponsorCategory,
              logo: sponsors[index].logo,
            );
          },
        ),
      ),
    );
  }
}
