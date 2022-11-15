import 'package:flutter/material.dart';

class MeetingRoomPartnersScreen extends StatelessWidget {
  const MeetingRoomPartnersScreen({Key? key}) : super(key: key);
  static const routeName = '/meeting-room-partners';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meeting Room Partners'),
        centerTitle: true,
      ),
    );
  }
}
