import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/speaker/speaker_detail_screen.dart';
import 'package:gpca_networking/screens/event/sponsor/sponsor_detail_screen.dart';

class SpeakersCategoryAllTile extends StatelessWidget {
  final String id;
  final String eventId;
  final String name;
  final String designation;
  final String company;
  final String photo;
  final String category;
  final String sideColor;

  SpeakersCategoryAllTile({
    required this.id,
    required this.eventId,
    required this.name,
    required this.designation,
    required this.company,
    required this.photo,
    required this.category,
    required this.sideColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(SpeakerDetailScreen.routeName, arguments: [id, eventId]),
      child: Container(
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
            RotatedBox(
              quarterTurns: 3,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Color(int.parse(sideColor)),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: FittedBox(
                  child: Text(
                    "$category\n speaker",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
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
