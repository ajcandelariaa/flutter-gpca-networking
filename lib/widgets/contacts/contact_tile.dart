import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/contacts/contact_detail_screen.dart';

class ContactTile extends StatelessWidget {
  final String id;
  final String eventId;
  final String contactType;
  final String name;
  final String note;
  final String photo;

  ContactTile({
    required this.id,
    required this.eventId,
    required this.contactType,
    required this.name,
    required this.note,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
          ContactDetailScreen.routeName,
          arguments: [id, eventId]),
      child: Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
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
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    contactType,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            Hero(
              tag: id,
              child: contactType == "Speaker"
                  ? CircleAvatar(
                      backgroundImage: AssetImage(photo),
                      radius: 35,
                    )
                  : Image.asset(
                      photo,
                      width: 100,
                      height: 70,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
