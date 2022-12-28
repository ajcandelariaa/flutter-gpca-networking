import 'package:flutter/cupertino.dart';

class EventDetailNavigationModel {
  final String id;
  final IconData icon;
  final String iconTitle;
  final String routeName;

  EventDetailNavigationModel({
    required this.id,
    required this.icon,
    required this.iconTitle,
    required this.routeName,
  });
}