import 'package:flutter/material.dart';

class AppDrawerBodyTile extends StatelessWidget {
  String title;
  IconData icon;
  Function tapHandler;
  bool isActive;

  AppDrawerBodyTile(this.title, this.icon, this.tapHandler, this.isActive, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isActive,
      selectedTileColor: Colors.grey[300],
      leading: Icon(icon, color: Theme.of(context).primaryColor),
      title: Text(
        title,
        style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18),
      ),
      horizontalTitleGap: 0,
      onTap: () => tapHandler(),
    );
  }
}