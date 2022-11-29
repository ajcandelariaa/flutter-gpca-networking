import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/speaker_provider.dart';
import 'package:gpca_networking/widgets/search_bar.dart';
import 'package:gpca_networking/widgets/speakers/speakers_category_all_tile.dart';
import 'package:provider/provider.dart';

class SpeakersCategoryAllScreen extends StatelessWidget {
  const SpeakersCategoryAllScreen({Key? key}) : super(key: key);
  static const routeName = "/speakers-category-all";

  @override
  Widget build(BuildContext context) {
    final categoryName = ModalRoute.of(context)!.settings.arguments as String;
    final speakers = Provider.of<SpeakerProvider>(context).allSpeakers;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xFFEBEBEB),
        appBar: AppBar(
          title: Text("$categoryName speakers"),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              SearchBar(),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: speakers.length,
                  itemBuilder: (ctx, index) {
                    return SpeakersCategoryAllTile(
                      id: speakers[index].id,
                      eventId: speakers[index].eventId,
                      name: speakers[index].name,
                      designation: speakers[index].designation,
                      company: speakers[index].company,
                      photo: speakers[index].photo,
                      category: speakers[index].speakerCategory,
                      sideColor: speakers[index].sideColor,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}