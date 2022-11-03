import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/drawers/app/app_drawer_body.dart';
import 'package:gpca_networking/widgets/drawers/app/app_drawer_footer.dart';
import 'package:gpca_networking/widgets/drawers/app/app_drawer_header.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            const AppDrawerHeader(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppDrawerBody(),
                  AppDrawerFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
