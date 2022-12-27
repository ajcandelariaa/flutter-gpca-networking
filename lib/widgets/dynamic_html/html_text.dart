import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

class HTMLText extends StatelessWidget {
  final String htmlText;

  HTMLText({
    required this.htmlText,
  });

  @override
  Widget build(BuildContext context) {
    return Html(
      data: htmlText,
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
    );
  }
}
