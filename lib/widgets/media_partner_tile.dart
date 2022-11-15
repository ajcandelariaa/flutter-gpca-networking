import 'package:flutter/material.dart';

class MediaPartnerTile extends StatelessWidget {
  final String id;
  final String name;
  final String website;
  final String logo;

  MediaPartnerTile({
    required this.id,
    required this.name,
    required this.website,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SABIC',),
              Text("www.sabic.com"),
            ],
          ),
          Image.asset(logo)
        ],
      ),
    );
  }
}
