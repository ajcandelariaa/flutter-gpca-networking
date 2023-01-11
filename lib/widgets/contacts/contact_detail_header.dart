import 'package:flutter/material.dart';

class ContactDetailHeader extends StatelessWidget {

  final String id;
  final String name;
  final String contactType;
  final String photo;

  ContactDetailHeader({
    required this.id,
    required this.name,
    required this.contactType,
    required this.photo,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/drawer-header.png'),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: id,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(photo),
              radius: 55,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            contactType,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
        ],
      ),
    );
  }
}
