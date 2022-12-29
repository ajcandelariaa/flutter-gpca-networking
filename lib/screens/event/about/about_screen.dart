import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/event_provider.dart';
import 'package:gpca_networking/widgets/dynamic_html/html_text.dart';
import 'package:provider/provider.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);
  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    final aboutHTMLData = Provider.of<EventProvider>(context).getEventAboutText("1");
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: HTMLText(htmlText: aboutHTMLData.toString()),
        ),
      ),
    );
  }
}
