import 'package:flutter/material.dart';
import 'package:gpca_networking/models/program_session_model.dart';
import 'package:gpca_networking/widgets/favorites/favorite_session_tile.dart';

class FavoriteSessionsScreen extends StatelessWidget {
  const FavoriteSessionsScreen({Key? key}) : super(key: key);

  static const routeName = "/favorite-sessions-screen";

  @override
  Widget build(BuildContext context) {
    final sessions =
        ModalRoute.of(context)!.settings.arguments as List<ProgramSessionModel>;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Sessions"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView.builder(
          itemCount: sessions.length,
          itemBuilder: (context, index) {
            return FavoriteSessionTile(
              id: sessions[index].id,
              title: sessions[index].title,
              startTime: sessions[index].startTime,
              endTime: sessions[index].endTime,
              date: sessions[index].date,
            );
          },
        ),
      ),
    );
  }
}
