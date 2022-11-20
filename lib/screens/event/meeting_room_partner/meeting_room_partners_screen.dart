import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/meeting_room_partner_provider.dart';
import 'package:gpca_networking/widgets/meeting_room_partner_tile.dart';
import 'package:gpca_networking/widgets/search_bar.dart';
import 'package:provider/provider.dart';

class MeetingRoomPartnersScreen extends StatelessWidget {
  const MeetingRoomPartnersScreen({Key? key}) : super(key: key);
  static const routeName = '/meeting-room-partners';

  @override
  Widget build(BuildContext context) {
    final meetingRoomPartners = Provider.of<MeetingRoomPartnerProvider>(context).meetingRoomPartners;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xFFEBEBEB),
        appBar: AppBar(
          title: Text('Meeting Room Partners'),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              SearchBar(),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: meetingRoomPartners.length,
                  itemBuilder: (ctx, index) {
                    return MeetingRoomPartnerTile(
                      id: meetingRoomPartners[index].id,
                      eventId: meetingRoomPartners[index].eventId,
                      name: meetingRoomPartners[index].name,
                      hall: meetingRoomPartners[index].hall,
                      logo: meetingRoomPartners[index].logo,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
