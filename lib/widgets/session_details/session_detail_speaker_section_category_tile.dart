import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/program_session_provider.dart';
import 'package:gpca_networking/widgets/session_details/session_detail_speaker_tile.dart';
import 'package:provider/provider.dart';

class SessionDetailSpeakerCategoryTile extends StatelessWidget {
  final String categoryName, programSessionId;

  SessionDetailSpeakerCategoryTile({
    required this.categoryName,
    required this.programSessionId,
  });

  @override
  Widget build(BuildContext context) {
    final speakersGroupedByType = Provider.of<ProgramSessionProvider>(context).getSpeakers(programSessionId, categoryName);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Theme.of(context).primaryColor,
          ),
          child: Text(
            categoryName,
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
        for (var speaker in speakersGroupedByType)
          SessionSpeakerTile(
            id: speaker.id,
            name: speaker.name,
            designation: speaker.designation,
            company: speaker.company,
            photo: speaker.photo,
          ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
