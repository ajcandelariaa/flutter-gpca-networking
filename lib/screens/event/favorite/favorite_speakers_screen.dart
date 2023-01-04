import 'package:flutter/material.dart';
import 'package:gpca_networking/models/speaker_model.dart';
import 'package:gpca_networking/widgets/favorites/favorite_speaker_tile.dart';

class FavoriteSpeakersScreen extends StatelessWidget {
  const FavoriteSpeakersScreen({Key? key}) : super(key: key);

  static const routeName = "/favorite-speakers-screen";

  @override
  Widget build(BuildContext context) {
    final speakers =
        ModalRoute.of(context)!.settings.arguments as List<SpeakerModel>;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Speakers"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView.builder(
          itemCount: speakers.length,
          itemBuilder: (context, index) {
            return FavoriteSpeakerTile(
              id: speakers[index].id,
              eventId: speakers[index].eventId,
              name: speakers[index].name,
              designation: speakers[index].designation,
              company: speakers[index].company,
              photo: speakers[index].photo,
            );
          },
        ),
      ),
    );
  }
}
