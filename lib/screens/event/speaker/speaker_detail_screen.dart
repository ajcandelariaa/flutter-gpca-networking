import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/speaker_provider.dart';
import 'package:gpca_networking/widgets/speakers/speaker_detail_body.dart';
import 'package:gpca_networking/widgets/speakers/speaker_detail_header.dart';
import 'package:gpca_networking/widgets/speakers/speaker_detail_session.dart';
import 'package:provider/provider.dart';

class SpeakerDetailScreen extends StatelessWidget {
  const SpeakerDetailScreen({Key? key}) : super(key: key);
  static const routeName = "/speaker-detail";

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as List<String>;
    final speaker =
        Provider.of<SpeakerProvider>(context).findById(arg[0], arg[1]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Speaker details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SpeakerDetailHeader(
              id: speaker.id,
              name: speaker.name,
              designation: speaker.designation,
              company: speaker.company,
              photo: speaker.photo,
            ),
            SizedBox(height: 5,),
            SpeakerDetailBody(
              htmlBio: speaker.htmlBio,
              speakerCategory: speaker.speakerCategory,
              speakerType: speaker.speakerType,
            ),
            SizedBox(height: 5,),
            SpeakerDetailSession(speaker.session),
          ],
        ),
      ),
    );
  }
}
