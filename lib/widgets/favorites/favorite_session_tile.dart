import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/program/session_detail_screen.dart';

class FavoriteSessionTile extends StatelessWidget {
  final String id;
  final String title;
  final String startTime;
  final String endTime;
  final String date;

  FavoriteSessionTile({
    required this.id,
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(SessionDetailScreen.routeName, arguments: id),
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
                    title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
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
                        "${startTime} - ${endTime}",
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
                        date,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
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
