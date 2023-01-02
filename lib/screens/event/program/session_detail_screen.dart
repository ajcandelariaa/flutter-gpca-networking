import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/program_session_provider.dart';
import 'package:gpca_networking/widgets/dynamic_html/html_text.dart';
import 'package:gpca_networking/widgets/session_details/session_detail_speaker_section.dart';
import 'package:provider/provider.dart';

class SessionDetailScreen extends StatelessWidget {
  const SessionDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/session-details';

  @override
  Widget build(BuildContext context) {
    final programId = ModalRoute.of(context)!.settings.arguments;
    final session = Provider.of<ProgramSessionProvider>(context)
        .findById(programId.toString());
    final speakerType = Provider.of<ProgramSessionProvider>(context)
        .getSessionSpeakers(programId.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Session details'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                session.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              const Divider(),
              HTMLText(htmlText: session.htmlDescription),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.access_time_outlined,
                    size: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "${session.startTime} - ${session.endTime}",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    session.date,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              SessionDetailSpeakerSection(speakerType: speakerType, programSessionId: session.id),
            ],
          ),
        ),
      ),
    );
  }
}
