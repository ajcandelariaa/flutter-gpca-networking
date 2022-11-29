import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/speaker_provider.dart';
import 'package:gpca_networking/screens/event/speaker/speakers_category_all_screen.dart';
import 'package:gpca_networking/screens/event/speaker/speakers_category_dynamic_screen.dart';
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
        title: const Text('Speakers Category'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SpeakerCategoryTile(
                categoryName: "All",
                categoryImage: 'assets/images/sample_agenda_banner.PNG',
                routeName: SpeakersCategoryAllScreen.routeName,
              ),
              for (var category in speakerCategory)
                SpeakerCategoryTile(
                  categoryName: category,
                  categoryImage: 'assets/images/sample_agenda_banner.PNG',
                  routeName: SpeakersCategoryDynamicScreen.routeName,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
