import 'package:flutter/material.dart';
import 'package:gpca_networking/models/program_session_model.dart';
import 'package:gpca_networking/providers/program_session_date_provider.dart';
import 'package:gpca_networking/widgets/session_details/session_detail_speaker_section_category_tile.dart';
import 'package:provider/provider.dart';

class SessionDetailSpeakerSection extends StatelessWidget {
  final List<String> speakerType;
  final String programSessionId;

  SessionDetailSpeakerSection({
    required this.speakerType,
    required this.programSessionId,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var type in speakerType)
          SessionDetailSpeakerCategoryTile(
            categoryName: type,
            programSessionId: programSessionId,
          ),
      ],
    );
  }
}
