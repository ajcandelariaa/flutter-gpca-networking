import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/program_session_provider.dart';
import 'package:gpca_networking/widgets/sessions_timeline_tile.dart';
import 'package:provider/provider.dart';

class ProgramSessionDateContainer extends StatelessWidget {
  final String programSessionDateId;

  ProgramSessionDateContainer({required this.programSessionDateId});

  @override
  Widget build(BuildContext context) {
    final programSessions = Provider.of<ProgramSessionProvider>(context).getProgramSessions(programSessionDateId);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (var programSession in programSessions)
              SessionsTimelineTile(
                sessionId: programSession.id,
                sessionStartTime: programSession.startTime,
                sessionEndTime: programSession.endTime,
                sessionTitle: programSession.title,
                sessionDescription: programSession.htmlDescription,
                sessionIsFirst: programSession.sessionIsFirst,
                sessionIsLast: programSession.sessionIsLast,
                sessionIndicatorXY: 0.5,
              ),
          ],
        ),
      ),
    );
  }
}
