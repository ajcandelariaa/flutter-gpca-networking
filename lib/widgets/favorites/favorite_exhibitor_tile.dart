import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/exhibitor/exhibitor_detail_screen.dart';

class FavoriteExhibitorTile extends StatelessWidget {
  final String id;
  final String eventId;
  final String name;
  final String stall;
  final String logo;

  FavoriteExhibitorTile({
    required this.id,
    required this.eventId,
    required this.name,
    required this.stall,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(ExhibitorDetailScreen.routeName, arguments: [id, eventId]),
      child: Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 10),
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    stall,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            Hero(
              tag: id,
              child: Image.asset(
                logo,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
