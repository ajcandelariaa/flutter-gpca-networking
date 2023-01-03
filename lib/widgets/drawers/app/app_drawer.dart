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
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            const AppDrawerHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    AppDrawerBody(),
                    SizedBox(height: 20,),
                    AppDrawerFooter(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
