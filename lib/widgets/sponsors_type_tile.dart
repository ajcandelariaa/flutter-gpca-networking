import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/program/session_screen.dart';

class SponsorsTypeTile extends StatelessWidget {
  final String sponsorType;
  final String sponsorImage;
  Function tapHandler;

  SponsorsTypeTile({
    required this.sponsorType,
    required this.sponsorImage,
    required this.tapHandler,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => tapHandler,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Container(
              color: Colors.black,
              child: Opacity(
                opacity: 0.25,
                child: Image.asset(
                  sponsorImage,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            sponsorType,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
