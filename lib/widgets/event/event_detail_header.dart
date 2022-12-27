import 'package:flutter/material.dart';

class EventDetailHeader extends StatelessWidget {
  final String imageUrl;

  EventDetailHeader({
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
