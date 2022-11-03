import 'package:flutter/material.dart';

class AppDrawerBody extends StatelessWidget {
  // bool pageActive = false;
  const AppDrawerBody({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, Function tapHandler, bool isActive) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue[900]),
      title: Text(title, style: TextStyle(color: Colors.blue[900], fontSize: 18),),
      horizontalTitleGap: 0,
      onTap: () => tapHandler(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildListTile('Home', Icons.home, () => Navigator.of(context).pushReplacementNamed('/'), false),
        buildListTile('About GPCA Networking', Icons.home, () => Navigator.of(context).pushReplacementNamed('/'), false),
        buildListTile('Rate this app', Icons.home, () => Navigator.of(context).pushReplacementNamed('/'), false),
        buildListTile('Terms & Condition', Icons.home, () => Navigator.of(context).pushReplacementNamed('/'), false),
        buildListTile('Settings', Icons.home, () => Navigator.of(context).pushReplacementNamed('/'), false),
      ],
    );
  }
}