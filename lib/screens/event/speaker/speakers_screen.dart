import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/speaker_provider.dart';
import 'package:gpca_networking/screens/event/speaker/speakers_category_all_screen.dart';
import 'package:gpca_networking/widgets/speakers/speaker_category_tile.dart';
import 'package:provider/provider.dart';

class SpeakersScreen extends StatelessWidget {
  const SpeakersScreen({Key? key}) : super(key: key);
  static const routeName = '/speakers';

  @override
  Widget build(BuildContext context) {
    final speakerCategory =
        Provider.of<SpeakerProvider>(context).speakersCategory;
    return Scaffold(
      appBar: AppBar(
        title: Text('Speakers Category'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SpeakerCategoryTile(
                categoryName: "All Speakers",
                categoryImage: 'assets/images/sample_agenda_banner.PNG',
                routeName: SpeakersCategoryAllScreen.routeName,
              ),
            ],
          ),
        ),
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
