import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/sponsor/sponsors_type_all_screen.dart';
import 'package:gpca_networking/widgets/sponsors_type_tile.dart';

class SponsorsScreen extends StatelessWidget {
  const SponsorsScreen({Key? key}) : super(key: key);
  static const routeName = '/sponsors';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sponsors'),
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
              SponsorsTypeTile(
                sponsorType: "All Sponsors",
                sponsorImage: 'assets/images/sample_agenda_banner.PNG',
                tapHandler: () => Navigator.of(context).pushNamed(SponsorsTypeAllScreen.routeName),
              ),
              const SizedBox(
                height: 15,
              ),
              SponsorsTypeTile(
                sponsorType: "Tier Sponsors",
                sponsorImage: 'assets/images/sample_agenda_banner.PNG',
                tapHandler: () => Navigator.of(context).pushNamed(SponsorsTypeAllScreen.routeName),
              ),
              const SizedBox(
                height: 15,
              ),
              SponsorsTypeTile(
                sponsorType: "Associate Sponsors",
                sponsorImage: 'assets/images/sample_agenda_banner.PNG',
                tapHandler: () => Navigator.of(context).pushNamed(SponsorsTypeAllScreen.routeName),
              ),
              const SizedBox(
                height: 15,
              ),
              SponsorsTypeTile(
                sponsorType: "Other Sponsors",
                sponsorImage: 'assets/images/sample_agenda_banner.PNG',
                tapHandler: () => Navigator.of(context).pushNamed(SponsorsTypeAllScreen.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}