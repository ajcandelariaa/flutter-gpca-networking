import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/speaker_provider.dart';
import 'package:gpca_networking/widgets/speakers/speaker_category_dynamic_type_tile.dart';
import 'package:provider/provider.dart';

class SpeakerCategoryDynamicTile extends StatelessWidget {
  final String category;
  final String type;

  SpeakerCategoryDynamicTile({
    required this.category,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final speakersGroupedByType =
        Provider.of<SpeakerProvider>(context).speakersListByType(category, type);
    return Column(
      children: [
        Container(
          padding:
              const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Theme.of(context).primaryColor,
          ),
          child: Text(
            "$type speakers",
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
          SpeakerCategoryDynamicTypeTile(
            id: speaker.id,
            eventId: speaker.eventId,
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
