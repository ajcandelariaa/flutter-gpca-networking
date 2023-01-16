import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/event_drawer_provider.dart';
import 'package:gpca_networking/providers/user_profile_provider.dart';
import 'package:gpca_networking/screens/event/event_detail_screen.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer.dart';
import 'package:gpca_networking/widgets/notifications/app_bar_notification_badge.dart';
import 'package:gpca_networking/widgets/profile/profile_body_three.dart';
import 'package:gpca_networking/widgets/profile/profile_body_one.dart';
import 'package:gpca_networking/widgets/profile/profile_body_two.dart';
import 'package:gpca_networking/widgets/profile/profile_footer.dart';
import 'package:gpca_networking/widgets/profile/profile_header.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const routeName = "/profile";

  _onBackButtonPress(ctx) {
    Provider.of<EventDrawerProvider>(ctx, listen: false).setActivePage(1);
    Navigator.of(ctx).pushReplacementNamed(EventDetailScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProfileProvider>(context)
        .getProfile(id: "1", eventId: "1");
    return WillPopScope(
      onWillPop: () => _onBackButtonPress(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          actions: [
            AppBarNotificationBadge(),
          ],
        ),
        drawer: EventDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeader(
                salutation: user.salutation,
                firstName: user.firstName,
                middleName: user.middleName,
                lastName: user.lastName,
                photo: user.photo,
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileBodyOne(
                username: user.username,
                emailAddress: user.emailAddress,
                mobileNumber: user.mobileNumber,
                landlineNumber: user.landlineNumber,
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileBodyTwo(
                companyName: user.companyName,
                jobTitle: user.jobTitle,
                country: user.country,
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileBodyThree(
                badgeNumber: user.badgeNumber,
                vistorType: user.vistorType,
                dateJoined: user.dateJoined,
                timeJoined: user.timeJoined,
              ),
              const SizedBox(
                height: 20,
              ),
              ProfileFooter(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
