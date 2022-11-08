import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);
  static const routeName = '/about';
  static const htmlData = """<h1>Sample Text </h1> <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Html(
            data: htmlData,
            onLinkTap: (url, context, attributes, element) async {
              final urlF = Uri.parse(url.toString());
              if (await canLaunchUrl(urlF)){
                await launchUrl(
                  urlF,
                  mode: LaunchMode.externalApplication
                );
              } else {
                throw 'Could not launch $urlF';
              }
            },
          ),
        ],
      ),
    );
  }
}