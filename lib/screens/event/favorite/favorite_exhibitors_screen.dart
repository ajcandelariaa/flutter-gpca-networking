import 'package:flutter/material.dart';
import 'package:gpca_networking/models/exhibitor_model.dart';
import 'package:gpca_networking/widgets/favorites/favorite_exhibitor_tile.dart';

class FavoriteExhibitorsScreen extends StatelessWidget {
  const FavoriteExhibitorsScreen({Key? key}) : super(key: key);

  static const routeName = "/favorite-exhibitors-screen";

  @override
  Widget build(BuildContext context) {
    final exhibitors =
        ModalRoute.of(context)!.settings.arguments as List<ExhibitorModel>;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Exhibitors"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView.builder(
          itemCount: exhibitors.length,
          itemBuilder: (context, index) {
            return FavoriteExhibitorTile(
              id: exhibitors[index].id,
              eventId: exhibitors[index].eventId,
              name: exhibitors[index].name,
              stall: exhibitors[index].stall,
              logo: exhibitors[index].logo,
            );
          },
        ),
      ),
    );
  }
}
