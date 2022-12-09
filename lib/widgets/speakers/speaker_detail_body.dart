import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

class SpeakerDetailBody extends StatelessWidget {
  final String htmlBio;
  final String speakerCategory;
  final String speakerType;

  SpeakerDetailBody({
    required this.htmlBio,
    required this.speakerCategory,
    required this.speakerType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Html(
            style: {
              "body": Style(margin: EdgeInsets.zero, padding: EdgeInsets.zero),
            },
            data: htmlBio,
            onLinkTap: (url, context, attributes, element) async {
              var urlF = Uri.parse(url.toString());
              if (await canLaunchUrl(urlF)) {
                await launchUrl(urlF, mode: LaunchMode.externalApplication);
              } else {
                String urlEncoded = Uri.encodeComponent(url.toString());
                urlF = Uri.parse('mailto:$urlEncoded');
                if (await canLaunchUrl(urlF)) {
                  await launchUrl(urlF);
                } else {
                  String urlEncoded = Uri.encodeComponent(url.toString());
                  urlF = Uri.parse('tel:$urlEncoded');
                  if (await canLaunchUrl(urlF)) {
                    await launchUrl(urlF);
                  } else {
                    throw 'Could not launch $urlF';
                  }
                }
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.view_agenda, color: Color(0xFF656565), size: 18),
                  SizedBox(
                    width: 3,
                  ),
                  Text(speakerCategory, style: TextStyle(color: Color(0xFF656565), fontSize: 12),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.mic, color: Color(0xFF656565), size: 18),
                  SizedBox(
                    width: 3,
                  ),
                  Text("$speakerType speaker", style: TextStyle(color: Color(0xFF656565), fontSize: 12),),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
