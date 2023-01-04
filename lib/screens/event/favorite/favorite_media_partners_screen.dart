import 'package:flutter/material.dart';
import 'package:gpca_networking/models/media_partner_model.dart';
import 'package:gpca_networking/widgets/favorites/favorite_media_partner_tile.dart';

class FavoriteMediaPartnersScreen extends StatelessWidget {
  const FavoriteMediaPartnersScreen({Key? key}) : super(key: key);

  static const routeName = "/favorite-media-partners-screen";

  @override
  Widget build(BuildContext context) {
    final mediaPartners =
        ModalRoute.of(context)!.settings.arguments as List<MediaPartnerModel>;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Media Partners"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView.builder(
          itemCount: mediaPartners.length,
          itemBuilder: (context, index) {
            return FavoriteMediaPartnerTile(
              id: mediaPartners[index].id,
              eventId: mediaPartners[index].eventId,
              name: mediaPartners[index].name,
              website: mediaPartners[index].website,
              logo: mediaPartners[index].logo,
            );
          },
        ),
      ),
    );
  }
}
