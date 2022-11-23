import 'package:flutter/material.dart';

class SpeakersScreen extends StatelessWidget {
  const SpeakersScreen({Key? key}) : super(key: key);
  static const routeName = '/speakers';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speakers Category'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15,),
        // child: ListView.builder(itemBuilder: itemBuilder),
        // child: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       SponsorsTypeTile(
        //         sponsorType: "All Sponsors",
        //         sponsorImage: 'assets/images/sample_agenda_banner.PNG',
        //         routeName: SponsorsTypeAllScreen.routeName,
        //       ),
        //       const SizedBox(
        //         height: 15,
        //       ),
        //       SponsorsTypeTile(
        //         sponsorType: "Tier Sponsors",
        //         sponsorImage: 'assets/images/sample_agenda_banner.PNG',
        //         routeName: SponsorsTypeTierScreen.routeName,
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}