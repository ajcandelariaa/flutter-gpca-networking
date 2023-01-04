import 'package:flutter/material.dart';
import 'package:gpca_networking/models/exhibitor_model.dart';
import 'package:gpca_networking/models/meeting_room_partner_model.dart';
import 'package:gpca_networking/widgets/favorites/favorite_exhibitor_tile.dart';
import 'package:gpca_networking/widgets/favorites/favorite_meeting_room_partner_tile.dart';
import 'package:gpca_networking/widgets/favorites/favorite_speaker_tile.dart';

class FavoriteMeetingRoomPartnersScreen extends StatelessWidget {
  const FavoriteMeetingRoomPartnersScreen({Key? key}) : super(key: key);

  static const routeName = "/favorite-meeting-room-partners-screen";

  @override
  Widget build(BuildContext context) {
    final meetingRoomPartners = ModalRoute.of(context)!.settings.arguments
        as List<MeetingRoomPartnerModel>;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favorite Meeting Room Partners",
          style: TextStyle(fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView.builder(
          itemCount: meetingRoomPartners.length,
          itemBuilder: (context, index) {
            return FavoriteMeetingRoomPartnerTile(
              id: meetingRoomPartners[index].id,
              eventId: meetingRoomPartners[index].eventId,
              name: meetingRoomPartners[index].name,
              hall: meetingRoomPartners[index].hall,
              logo: meetingRoomPartners[index].logo,
            );
          },
        ),
      ),
    );
  }
}
