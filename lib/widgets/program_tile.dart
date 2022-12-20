import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/program/session_screen.dart';

class ProgramTile extends StatelessWidget {
  final String id;
  final String name;
  final String date;
  final String backgroundPicture;

  ProgramTile({
    required this.id,
    required this.name,
    required this.date,
    required this.backgroundPicture,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () =>
              Navigator.of(context).pushNamed(SessionsScreen.routeName, arguments: id),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: Container(
                  color: Colors.black,
                  child: Opacity(
                    opacity: 0.25,
                    child: Image.asset(
                      backgroundPicture,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      date,
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
