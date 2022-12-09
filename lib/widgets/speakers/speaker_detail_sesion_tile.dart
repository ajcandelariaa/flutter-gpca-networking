import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/program/session_detail_screen.dart';

class SpeakerDetailSessionTile extends StatelessWidget {
  final String id;
  final String title;
  final String time;
  final String date;

  SpeakerDetailSessionTile({
    required this.id,
    required this.title,
    required this.time,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(SessionDetailScreen.routeName),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14,),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: Theme.of(context).primaryColor,
                    size: 16,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    time,
                    style: TextStyle(
                        fontSize: 12, color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: Theme.of(context).primaryColor,
                    size: 16,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                        fontSize: 12, color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
