import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/sponsor/sponsor_detail_screen.dart';

class SpeakersCategoryAllTile extends StatelessWidget {
  final String id;
  final String eventId;
  final String name;
  final String designation;
  final String company;
  final String photo;
  final String category;

  SpeakersCategoryAllTile({
    required this.id,
    required this.eventId,
    required this.name,
    required this.designation,
    required this.company,
    required this.photo,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        width: double.infinity,
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
                  color: Theme.of(context).primaryColor,
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
            Container(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF575757),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        designation,
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).primaryColor,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        company,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
