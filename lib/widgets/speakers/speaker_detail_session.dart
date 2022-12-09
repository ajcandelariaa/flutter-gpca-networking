import 'package:flutter/material.dart';
import 'package:gpca_networking/models/speaker_model.dart';
import 'package:gpca_networking/widgets/speakers/speaker_detail_sesion_tile.dart';

class SpeakerDetailSession extends StatelessWidget {
  final List<SpeakerSessionModel> sessions;

  SpeakerDetailSession(this.sessions);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Theme.of(context).primaryColor,
            ),
            child: const Text(
              "Session",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          for (var session in sessions)
          SpeakerDetailSessionTile(),
        ],
      ),
    );
  }
}
