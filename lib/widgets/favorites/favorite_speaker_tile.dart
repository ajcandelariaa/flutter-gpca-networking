import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/speaker/speaker_detail_screen.dart';

class FavoriteSpeakerTile extends StatelessWidget {
  final String id;
  final String eventId;
  final String name;
  final String designation;
  final String company;
  final String photo;

  FavoriteSpeakerTile({
    required this.id,
    required this.eventId,
    required this.name,
    required this.designation,
    required this.company,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(SpeakerDetailScreen.routeName, arguments: [id, eventId]),
      child: Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 10),
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        height: 100,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(
              tag: id,
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 35,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF575757),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    designation,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).primaryColor,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    company,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
