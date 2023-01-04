import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/speaker_provider.dart';
import 'package:gpca_networking/widgets/search/search_bar.dart';
import 'package:gpca_networking/widgets/speakers/speaker_category_dynamic_tile.dart';
import 'package:provider/provider.dart';

class SpeakersCategoryDynamicScreen extends StatelessWidget {
  const SpeakersCategoryDynamicScreen({Key? key}) : super(key: key);
  static const routeName = "/speakers-category-dynamic";

  @override
  Widget build(BuildContext context) {
    final categoryName = ModalRoute.of(context)!.settings.arguments as String;
    final speakerType = Provider.of<SpeakerProvider>(context).speakersType(categoryName);
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
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  itemCount: speakerType.length,
                  itemBuilder: (ctx, index) {
                    return SpeakerCategoryDynamicTile(
                      category: categoryName,
                      type: speakerType[index],
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
