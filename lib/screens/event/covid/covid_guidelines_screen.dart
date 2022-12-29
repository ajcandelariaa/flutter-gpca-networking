import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/event_provider.dart';
import 'package:gpca_networking/widgets/dynamic_html/html_text.dart';
import 'package:provider/provider.dart';

class CovidGuidelinesScreen extends StatelessWidget {
  const CovidGuidelinesScreen({Key? key}) : super(key: key);
  static const routeName = '/covid-guidelines';

  @override
  Widget build(BuildContext context) {
    final covidHTMLData = Provider.of<EventProvider>(context).getEventCovidText("1");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Covid-19 Safety Guidelines'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: HTMLText(htmlText: covidHTMLData.toString()),
        ),
      ),
    );
  }
}
