import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gpca_networking/providers/media_partner_provider.dart';
import 'package:gpca_networking/providers/meeting_room_partner_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MeetingRoomPartnerDetailScreen extends StatefulWidget {
  const MeetingRoomPartnerDetailScreen({Key? key}) : super(key: key);
  static const routeName = "/meeting-room-partner-detail";

  @override
  State<MeetingRoomPartnerDetailScreen> createState() =>
      _MeetingRoomPartnerDetailScreenState();
}

class _MeetingRoomPartnerDetailScreenState extends State<MeetingRoomPartnerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as List<String>;
    final meetingRoomPartner =
        Provider.of<MeetingRoomPartnerProvider>(context).findById(arg[0], arg[1]);
    return Scaffold(
      backgroundColor: Color(0xFFEBEBEB),
      appBar: AppBar(
        title: Text('Meeting Room Partner detail'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Hero(
                  tag: meetingRoomPartner.id,
                  child: Image.asset(
                    meetingRoomPartner.logo,
                    height: 200,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              meetingRoomPartner.name,
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                              'Meeting room partner',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF888888),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            meetingRoomPartner.isFavorite
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : const Icon(Icons.favorite_border),
                            Text(meetingRoomPartner.numberOfFavorites.toString()),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.alternate_email,
                            size: 18, color: Theme.of(context).primaryColor),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () async {
                            final urlF = Uri.parse(meetingRoomPartner.website.toString());
                            if (await canLaunchUrl(urlF)) {
                              await launchUrl(urlF,
                                  mode: LaunchMode.externalApplication);
                            } else {
                              throw 'Could not launch $urlF';
                            }
                          },
                          child: Text(
                            meetingRoomPartner.website,
                            style:
                                TextStyle(color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.alternate_email,
                            size: 18, color: Theme.of(context).primaryColor),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () async {
                            String email = Uri.encodeComponent(meetingRoomPartner.emailAddress);
                            final urlF = Uri.parse('mailto:$email');
                            if (await canLaunchUrl(urlF)) {
                              await launchUrl(urlF);
                            } else {
                              throw 'Could not launch $urlF';
                            }
                          },
                          child: Text(
                            meetingRoomPartner.emailAddress,
                            style:
                                TextStyle(color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.phone_outlined,
                            size: 18, color: Theme.of(context).primaryColor),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () async {
                            String number = Uri.encodeComponent(meetingRoomPartner.contactNumber);
                            final urlF = Uri.parse('tel:$number');
                            if (await canLaunchUrl(urlF)) {
                              await launchUrl(urlF);
                            } else {
                              throw 'Could not launch $urlF';
                            }
                          },
                          child: Text(
                            meetingRoomPartner.contactNumber,
                            style:
                                TextStyle(color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.room,
                            size: 18, color: Theme.of(context).primaryColor),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          meetingRoomPartner.hall,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 139, 139, 139),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Company Description:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF888888),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Html(
                      data: meetingRoomPartner.htmlDescription,
                      onLinkTap: (url, context, attributes, element) async {
                        final urlF = Uri.parse(url.toString());
                        if (await canLaunchUrl(urlF)) {
                          await launchUrl(urlF,
                              mode: LaunchMode.externalApplication);
                        } else {
                          throw 'Could not launch $urlF';
                        }
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
