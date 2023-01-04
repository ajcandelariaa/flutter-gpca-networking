import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/exhibitor_provider.dart';
import 'package:gpca_networking/widgets/exhibitors/exhibitor_tile.dart';
import 'package:gpca_networking/widgets/search/search_bar.dart';
import 'package:provider/provider.dart';

class ExhibitorsScreen extends StatelessWidget {
  const ExhibitorsScreen({Key? key}) : super(key: key);
  static const routeName = '/exhibitors';

  @override
  Widget build(BuildContext context) {
    final exhibitors = Provider.of<ExhibitorProvider>(context).exhibitors;
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
          title: Text('Exhibitors'),
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
                  itemCount: exhibitors.length,
                  itemBuilder: (ctx, index) {
                    return ExhibitorTile(
                      id: exhibitors[index].id,
                      eventId: exhibitors[index].eventId,
                      name: exhibitors[index].name,
                      stall: exhibitors[index].stall,
                      logo: exhibitors[index].logo,
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